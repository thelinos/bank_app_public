import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:iconsax/iconsax.dart";

class PasswordTextField extends HookWidget {
  const PasswordTextField({
    required String hintText,
    super.key,
    void Function(String)? onChanged,
    String? errorText,
  })  : _onChanged = onChanged,
        _errorText = errorText,
        _hinText = hintText;

  final void Function(String)? _onChanged;
  final String? _errorText;

  final String _hinText;
  @override
  Widget build(BuildContext context) {
    final visibilityButtonHasBeenTapped = useState<bool>(true);
    return TextField(
      onChanged: _onChanged,
      onTapOutside: (event) {
        context.focus.unfocus();
      },
      autocorrect: false,
      obscureText: visibilityButtonHasBeenTapped.value,
      obscuringCharacter: "*",
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        color: Color(0xFF212121),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        hintText: _hinText,
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
        suffixIcon: IconButton(
          onPressed: () {
            visibilityButtonHasBeenTapped.value =
                !visibilityButtonHasBeenTapped.value;
          },
          icon: visibilityButtonHasBeenTapped.value
              ? const Icon(Iconsax.eye)
              : const Icon(Iconsax.eye_slash),
        ),
      ),
    );
  }
}
