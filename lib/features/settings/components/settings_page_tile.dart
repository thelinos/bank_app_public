import "package:flutter/material.dart"
    show
        Border,
        BorderSide,
        BoxDecoration,
        BuildContext,
        Color,
        Container,
        EdgeInsets,
        GestureDetector,
        GestureTapCallback,
        Row,
        SizedBox,
        StatelessWidget,
        Widget;

class const SettingsPageTile({
  required final Widget _tileLabel,
  required final GestureTapCallback _onTap,
  final Widget? _icon,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color(0xFFE1E6F0).withValues(alpha: .6),
              width: 1.5,
            ),
          ),
        ),
        child: Row(
          spacing: _icon != null ? 17.52 : 0,
          children: [_icon ?? const SizedBox.shrink(), _tileLabel],
        ),
      ),
    );
  }
}
