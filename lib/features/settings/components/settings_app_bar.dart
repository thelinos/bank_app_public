import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:flutter/material.dart";

class const SettingsAppBar({super.key})
    extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff022E64),
      elevation: 0,
      centerTitle: false,
      leading: BackButton(
        style: ButtonStyle(iconColor: .all(Colors.white)),
      ),
      actions: [
        Text(
          "Settings",
          style: Constants.kCurrentAppDefaultTextStyle.copyWith(
            fontSize: 24,
            color: const Color(0xFFF5F5F5),
            letterSpacing: .18,
            height: 0,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
