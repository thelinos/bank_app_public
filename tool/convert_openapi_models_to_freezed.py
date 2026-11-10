#!/usr/bin/env python3
"""Convert OpenAPI Generator's JSON-serializable models to Freezed models."""

from __future__ import annotations

import re
import sys
from pathlib import Path
from textwrap import dedent


def extract_annotation(source: str, annotation: str, start: int = 0) -> tuple[str, int]:
    match = re.search(rf"(?m)^[ \t]*@{annotation}\(", source[start:])
    if match is None:
        raise ValueError(f"Could not find @{annotation}")

    annotation_start = start + match.start()
    content_start = start + match.end()
    depth = 1
    for index in range(content_start, len(source)):
        if source[index] == "(":
            depth += 1
        elif source[index] == ")":
            depth -= 1
            if depth == 0:
                return source[annotation_start : index + 1], index + 1

    raise ValueError(f"Unclosed @{annotation}")


def convert_model(path: Path) -> None:
    source = path.read_text(encoding="utf-8")
    if f"part '{path.stem}.freezed.dart';" in source:
        source = re.sub(
            r"(?m)^[ \t]*@JsonSerializable\([\s\S]*?^[ \t]*\)\n",
            "",
            source,
            count=1,
        )
        source = re.sub(
            r"^// ignore_for_file: prefer_double_quotes, unnecessary_raw_strings\n\n",
            "",
            source,
        )
        path.write_text(source, encoding="utf-8")
        return

    class_match = re.search(r"\bclass\s+(\w+)\s*\{", source)
    if class_match is None:
        return

    class_name = class_match.group(1)
    class_start = class_match.start()
    enum_match = re.search(r"(?m)^enum\s+", source[class_match.end() :])
    class_end = (
        class_match.end() + enum_match.start()
        if enum_match is not None
        else len(source)
    )
    class_body = source[class_start:class_end]

    constructor = re.search(
        rf"\b{re.escape(class_name)}\(\{{(.*?)\}}\);", class_body, re.DOTALL
    )
    from_json = re.search(
        rf"(?m)^[ \t]*factory\s+{re.escape(class_name)}\.fromJson"
        r"\(Map<String, dynamic> json\)\s*=>\s*[^;]+;",
        class_body,
    )
    if constructor is None or from_json is None:
        raise ValueError(f"Could not parse generated model {path}")

    constructor_parameters = {
        match.group("name"): (match.group("required") is not None, match.group("default"))
        for match in re.finditer(
            r"(?:(?P<required>required)\s+)?this\.(?P<name>\w+)"
            r"(?:\s*=\s*(?P<default>[^,\n]+))?\s*,",
            constructor.group(1),
        )
    }

    fields = []
    annotation_matches = list(
        re.finditer(r"(?m)^[ \t]*@JsonKey\(", class_body)
    )
    for index, annotation_match in enumerate(annotation_matches):
        annotation, annotation_end = extract_annotation(
            class_body, "JsonKey", annotation_match.start()
        )
        field_match = re.search(
            r"\s*final\s+([^\n;]+?)\s+(\w+);", class_body[annotation_end:]
        )
        if field_match is None:
            continue

        field_type, field_name = field_match.groups()
        if field_name not in constructor_parameters:
            raise ValueError(f"Missing constructor parameter for {field_name} in {path}")

        required, default = constructor_parameters[field_name]
        if default is not None:
            annotation = re.sub(
                r"\s*defaultValue:\s*[^,\n]+,\s*", "\n", annotation
            )

        field_comments = ""
        previous_end = (
            annotation_matches[index - 1].start()
            if index > 0
            else class_match.end()
        )
        between = class_body[previous_end : annotation_match.start()]
        comment_match = re.search(r"(?m)(?:^[ \t]*///.*\n)+[ \t]*$", between)
        if comment_match is not None:
            field_comments = dedent(comment_match.group(0)).strip() + "\n"

        parameter_annotations = [annotation]
        if default is not None:
            parameter_annotations.insert(0, f"@Default({default.strip()})")

        fields.append(
            {
                "name": field_name,
                "type": field_type.strip(),
                "required": required,
                "annotations": parameter_annotations,
                "comments": field_comments,
            }
        )

    if len(fields) != len(constructor_parameters):
        raise ValueError(f"Could not parse all fields in generated model {path}")

    imports = re.findall(r"(?m)^import '[^']+';|^import \"[^\"]+\";", source[:class_start])
    imports = [
        import_line
        for import_line in imports
        if "copy_with_extension" not in import_line
        and "json_annotation" not in import_line
        and "freezed_annotation" not in import_line
    ]
    imports.extend(
        [
            "import 'package:freezed_annotation/freezed_annotation.dart';",
            "import 'package:json_annotation/json_annotation.dart';",
        ]
    )
    part_lines = [
        f"part '{path.stem}.freezed.dart';",
        f"part '{path.stem}.g.dart';",
    ]

    constructor_doc = f"  /// Returns a new [{class_name}] instance."
    parameters = []
    for field in fields:
        if field["comments"]:
            parameters.extend(field["comments"].rstrip().splitlines())
        for annotation in field["annotations"]:
            parameters.extend(dedent(annotation).strip().splitlines())
        modifier = "required " if field["required"] else ""
        parameters.append(
            f"    {modifier}{field['type']} {field['name']},"
        )

    rebuilt = (
        "\n".join(imports)
        + "\n\n"
        + "\n".join(part_lines)
        + "\n\n"
        + "@freezed\n"
        + f"abstract class {class_name} with _${class_name} {{\n"
        + constructor_doc
        + "\n"
        + f"  const factory {class_name}({{\n"
        + "\n".join(parameters)
        + "\n  }) = _"
        + class_name
        + ";\n\n"
        + "  "
        + from_json.group(0).strip()
        + "\n}\n"
    )

    if enum_match is not None:
        rebuilt += "\n" + source[class_end:].lstrip()

    path.write_text(rebuilt, encoding="utf-8")


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit("Usage: convert_openapi_models_to_freezed.py <package-path>")

    model_dir = Path(sys.argv[1]) / "lib" / "src" / "model"
    for model_path in sorted(model_dir.glob("*.dart")):
        convert_model(model_path)


if __name__ == "__main__":
    main()
