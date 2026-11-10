import "package:auto_route/auto_route.dart";
import "package:bank_app/features/routes/app_routes.gr.dart";
import "package:bank_app/features/settings/common/settings_constants.dart"
    show SettingsConstants;
import "package:bank_app/features/settings/components/settings_page_tile.dart"
    show SettingsPageTile;
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart" show Iconsax;

class const _IconDefaultStyles({
  required final int colorCode,
  required final double size,
});

class const AccountSettings({super.key}) extends StatelessWidget {
  _IconDefaultStyles get _iconDefaultStyles =>
      const _IconDefaultStyles(colorCode: 0xFF022E64, size: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          color: const Color(0xFFE1E6F0),
          width: .infinity,
          child: Text(
            "Account Settings",
            style: Constants.kCurrentAppDefaultTextStyle.copyWith(
              color: const Color(0xFF001530),
            ),
          ),
        ),
        SettingsPageTile(
          onTap: () async {
            if (!context.mounted) return;
            await context.pushRoute(const ChangeAccountEmailPage());
          },
          icon: Icon(
            Iconsax.message,
            color: Color(_iconDefaultStyles.colorCode),
          ),
          tileLabel: Text(
            "Change Account Email",
            style: SettingsConstants.defaultTileTextStyle,
          ),
        ),
        SettingsPageTile(
          onTap: () async {
            if (!context.mounted) return;
            await context.pushRoute(const SetNewPasswordPage());
          },
          icon: Icon(
            Iconsax.lock,
            color: Color(_iconDefaultStyles.colorCode),
            size: _iconDefaultStyles.size,
          ),
          tileLabel: Text(
            "Change Account Password",
            style: SettingsConstants.defaultTileTextStyle,
          ),
        ),
        SettingsPageTile(
          onTap: () async {
            if (!context.mounted) return;
            await context.showGenericDialogBox(
              title: "Sign Out?",
              description: "Are you sure you want to sign out of the app?",
              buttonsSection: [
                SizedBox(
                  width: .infinity,
                  child: Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: ButtonStyle(
                            fixedSize: .all(const Size.fromHeight(56)),
                            side: .all(
                              const BorderSide(color: Color(0xFFE6B014)),
                            ),
                            shape: .all(
                              const RoundedRectangleBorder(
                                borderRadius: .all(.circular(8)),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Confirm",
                            style: SettingsConstants.defaultDialogBoxTextStyle
                                .copyWith(color: const Color(0xFFE6B014)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FilledButton(
                          style: ButtonStyle(
                            fixedSize: .all(const Size.fromHeight(56)),
                            shape: .all(
                              const RoundedRectangleBorder(
                                borderRadius: .all(.circular(8)),
                              ),
                            ),
                            backgroundColor: .all(const Color(0xFFE6B014)),
                          ),
                          onPressed: context.flutterNavigator.pop,
                          child: Text(
                            "Cancel",
                            style: SettingsConstants.defaultDialogBoxTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          icon: Icon(Iconsax.logout, size: _iconDefaultStyles.size),
          tileLabel: Text(
            "Sign out",
            style: SettingsConstants.defaultTileTextStyle,
          ),
        ),
      ],
    );
  }
}
