import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:material_ui/material_ui.dart";

class EmailTextField extends StatelessWidget {
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
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        color: Color(0xFF212121),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        hintText: "Enter email",
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        errorText: _errorText,
        errorMaxLines: 2,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
      ),
    );
  }
}
