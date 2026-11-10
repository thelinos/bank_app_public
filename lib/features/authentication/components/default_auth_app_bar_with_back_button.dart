import "package:flutter/material.dart";

class DefaultAuthAppBarWithBackButton extends StatelessWidget
    implements PreferredSizeWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(style: ButtonStyle(iconColor: .all(Colors.white))),
      elevation: 0,
      backgroundColor: const Color(0xff022E64),
      leadingWidth: 28,
      centerTitle: false,
      actions: [
        Container(
          margin: const .only(right: 8),
          child: Image.asset(
            "assets/images/app_icon.png",
            width: 96,
            height: 32,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
