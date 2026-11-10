import "package:flutter/material.dart";

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required Widget buttonContent,
    void Function()? onTap,
    super.key,
  })  : _buttonContent = buttonContent,
        _onTap = onTap;

  final Widget _buttonContent;
  final void Function()? _onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFE6B014),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buttonContent,
          ],
        ),
      ),
    );
  }
}
