import "package:bank_app/features/settings/common/settings_constants.dart"
    show SettingsConstants;
import "package:bank_app/features/settings/components/settings_page_tile.dart"
    show SettingsPageTile;
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:material_ui/material_ui.dart";

class const About({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: const Color(0xFFE1E6F0),
          width: .infinity,
          child: Text(
            "About",
            style: Constants.kCurrentAppDefaultTextStyle.copyWith(
              color: const Color(0xFF001530),
            ),
          ),
        ),
        SettingsPageTile(
          onTap: () {},
          tileLabel: Text(
            "Terms and Conditions",
            style: SettingsConstants.defaultTileTextStyle,
          ),
        ),
        SettingsPageTile(
          onTap: () {},
          tileLabel: Text(
            "Privacy Policy",
            style: SettingsConstants.defaultTileTextStyle,
          ),
        ),
      ],
    );
  }
}
