import "package:material_ui/material_ui.dart";

class PrimaryButton extends StatelessWidget {
  const new({
    required this._buttonContent,
    this._onTap,
    super.key,
  });

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
