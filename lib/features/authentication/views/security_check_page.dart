import "package:auto_route/auto_route.dart";
import "package:bank_app/features/authentication/components/default_auth_app_bar_with_back_button.dart"
    show DefaultAuthAppBarWithBackButton;
import "package:bank_app/features/authentication/core/constants/auth_constants.dart"
    show AuthConstants;
import "package:bank_app/features/routes/app_routes.gr.dart"
    show SetNewEmailPage;
import "package:bank_app/features/settings/common/settings_constants.dart"
    show SettingsConstants;
import "package:bank_app/shared/common/components/password_text_field.dart"
    show PasswordTextField;
import "package:material_ui/material_ui.dart";

@RoutePage()
class SecurityCheckPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff022E64),
      appBar: const DefaultAuthAppBarWithBackButton(),
      body: Padding(
        padding: const .symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox.square(dimension: 42),
            Column(
              spacing: 8,
              mainAxisAlignment: .center,
              children: [
                const Text(
                  "Security Check",
                  style: AuthConstants.defaultTitleTextStyle,
                ),
                Text(
                  "Enter the password to your account to\n continue",
                  textAlign: .center,
                  style: AuthConstants.defaultTitleTextStyle.copyWith(
                    fontWeight: .w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox.square(dimension: 78),
            Column(
              spacing: 32,
              children: [
                const PasswordTextField(hintText: "Enter password"),
                SizedBox(
                  width: .infinity,
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
                    onPressed: () async {
                      if (!context.mounted) return;
                      await context.pushRoute(const SetNewEmailPage());
                    },
                    child: Text(
                      "Continue",
                      style: SettingsConstants.defaultDialogBoxTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
