// import "package:bank_app/shared/gen/assets.gen.dart" show Assets;
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:flutter/material.dart"
    show
        // Align,
        BuildContext,
        Color,
        ColoredBox,
        Colors,
        Container,
        EdgeInsets,
        Icon,
        Padding,
        Row,
        Stack,
        StatelessWidget,
        Text,
        Widget;
import "package:iconsax/iconsax.dart" show Iconsax;

class const Profile({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .bottomStart,
      children: [
        ColoredBox(
          color: const Color(0xFF212121).withValues(alpha: .3),
          child: const Icon(Iconsax.user, size: 156, color: Colors.white),
        ),
        Container(
          color: const Color(0xFF212121).withValues(alpha: .6),
          margin: const EdgeInsets.all(9),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
            child: Row(
              spacing: 4,
              children: [
                const Icon(Iconsax.edit, color: Colors.white, size: 24),
                Text(
                  "Edit Profile",
                  style: Constants.kCurrentAppDefaultTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
