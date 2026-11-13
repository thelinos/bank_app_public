import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:material_ui/material_ui.dart";

class FirstNameTextField extends StatelessWidget {
  const new({
    super.key,
    this._onChanged,
    this._errorText,
  });

  final void Function(String)? _onChanged;
  final String? _errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: _onChanged,
      onTapOutside: (event) {
        context.focus.unfocus();
      },
      autocorrect: false,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        color: Color(0xFF212121),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        errorMaxLines: 2,
        hintText: "Enter first name",
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        errorText: _errorText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
      ),
    );
  }
}
