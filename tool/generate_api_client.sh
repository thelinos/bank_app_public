#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
spec_url="${OPENAPI_SPEC_URL:-http://localhost:3000/api-docs.json}"
spec_path="$repo_root/openapi/kennedy-mega-bank.openapi.json"
client_path="$repo_root/packages/kennedy_mega_bank_api"
normalized_spec="$(mktemp)"
trap 'rm -f "$normalized_spec"' EXIT

curl --fail --silent --show-error "$spec_url" --output "$spec_path"

python3 - "$spec_path" "$normalized_spec" <<'PY'
import json
import sys

source_path, output_path = sys.argv[1:]
with open(source_path, encoding="utf-8") as source:
    spec = json.load(source)

# OpenAPI Generator's dart-dio generator emits invalid models for scalar oneOf
# schemas. These two fields intentionally accept arbitrary JSON scalar values.
spec["components"]["schemas"]["ErrorResponse"]["properties"]["status"] = {}
spec["components"]["schemas"]["CreateTransactionRequest"]["properties"][
    "amount"
] = {}

with open(output_path, "w", encoding="utf-8") as output:
    json.dump(spec, output, indent=2)
    output.write("\n")
PY

rm -rf "$client_path"
npx --yes @openapitools/openapi-generator-cli@2.42.0 generate \
  -i "$normalized_spec" \
  -g dart-dio \
  -o "$client_path" \
  --additional-properties=pubName=kennedy_mega_bank_api,pubVersion=1.0.0,serializationLibrary=json_serializable,enumUnknownDefaultCase=true,pubPublishTo=none

python3 - "$client_path/pubspec.yaml" <<'PY'
import re
import sys
from pathlib import Path

pubspec_path = sys.argv[1]
with open(pubspec_path, encoding="utf-8") as pubspec:
    contents = pubspec.read()

match = re.search(r"(?m)^  sdk: ['\"]>=([0-9.]+) <4\.0\.0['\"]$", contents)
if match is None:
    raise SystemExit(f"Could not find generated Dart SDK constraint in {pubspec_path}")
if tuple(map(int, match.group(1).split("."))) < (3, 8, 0):
    contents = contents[: match.start(1)] + "3.8.0" + contents[match.end(1) :]

contents = re.sub(r"(?m)^  copy_with_extension(?:_gen)?:.*\n", "", contents)
contents = contents.replace(
    "dependencies:\n",
    "dependencies:\n  freezed_annotation: ^3.1.0\n",
    1,
)
contents = contents.replace(
    "dev_dependencies:\n",
    "dev_dependencies:\n"
    "  build_runner: ^2.15.0\n"
    "  freezed: ^3.2.0\n"
    "  very_good_analysis: ^11.0.0\n",
    1,
)
contents = re.sub(r"(?m)^  build_runner:.*$", "  build_runner: ^2.15.0", contents)
contents = re.sub(
    r"(?m)^  json_annotation:.*$", "  json_annotation: ^4.12.0", contents
)
contents = re.sub(
    r"(?m)^  json_serializable:.*$", "  json_serializable: ^6.14.0", contents
)

with open(pubspec_path, "w", encoding="utf-8") as pubspec:
    pubspec.write(contents)

build_config_path = Path(pubspec_path).with_name("build.yaml")
with open(build_config_path, encoding="utf-8") as build_config:
    build_contents = build_config.read()
build_contents, replacements = re.subn(
    r"(?m)^([ \t]*disallow_unrecognized_keys:\s*)true(\s*(?:#.*)?)$",
    r"\1false\2",
    build_contents,
)
if replacements == 0 and not re.search(
    r"(?m)^[ \t]*disallow_unrecognized_keys:\s*false\s*(?:#.*)?$",
    build_contents,
):
    raise SystemExit(
        f"Could not configure JSON key handling in {build_config_path}"
    )
with open(build_config_path, "w", encoding="utf-8") as build_config:
    build_config.write(build_contents)
PY

python3 "$repo_root/tool/convert_openapi_models_to_freezed.py" "$client_path"
cat > "$client_path/analysis_options.yaml" <<'EOF'
include: ../../analysis_options.yaml

analyzer:
  exclude:
    - "**/*.g.dart"
    - "**/*.freezed.dart"
    - "**/*gr.dart"
    - build/**
    - android/**
    - ios/**
    - test/*.dart
EOF

cd "$client_path"
dart pub get
dart run build_runner build --delete-conflicting-outputs
dart format lib
dart fix --apply

cat > "$client_path/README.md" <<'EOF'
# Kennedy Mega Bank API client

This standalone Dart/Dio client is generated from the backend OpenAPI
specification. It is not published and is not connected to the main app's
repositories, BLoCs, or UI. Do not hand-edit generated files in this directory.

## Requirements

- Dart 3.8 or later
- Dio 5

## Regenerate

From the repository root, with the backend running:

```bash
bash tool/generate_api_client.sh
```

See the root [README](../../README.md) for generator details and validation.
Generated endpoint and model documentation is in `doc/`.

## Example

```dart
final api = KennedyMegaBankApi(
  basePathOverride: 'http://10.0.2.2:3000',
);
final health = await api.getSystemApi().healthGet();
```

Use the correct base URL for each runtime; `10.0.2.2` is the Android emulator
address for a backend running on the host machine. The OpenAPI specification
defines HTTP-only access and refresh cookies. Configure and verify Dio cookie
handling before calling authenticated endpoints; the generated client does
not persist a cookie session by itself.
EOF
