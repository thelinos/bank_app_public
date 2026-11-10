import "package:auto_route/auto_route.dart" show RoutePage;
import "package:bank_app/features/authentication/components/default_auth_app_bar_with_back_button.dart"
    show DefaultAuthAppBarWithBackButton;
import "package:bank_app/features/authentication/core/constants/auth_constants.dart"
    show AuthConstants;
import "package:bank_app/shared/common/components/password_text_field.dart"
    show PasswordTextField;
import "package:flutter/material.dart";

@RoutePage()
class SetNewPasswordPage extends StatelessWidget {
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
              mainAxisAlignment: .center,
              spacing: 8,
              children: [
                const Text(
                  "Set New Password",
                  style: AuthConstants.defaultTitleTextStyle,
                ),
                Text(
                  "Enter the new passwords for your \n account. Don’t forget it this time please",
                  textAlign: .center,
                  style: AuthConstants.defaultTitleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: .w600,
                  ),
                ),
              ],
            ),
            const SizedBox.square(dimension: 78),
            const Column(
              spacing: 16,
              children: [
                PasswordTextField(hintText: "Enter old password"),
                PasswordTextField(hintText: "Enter new password"),
                PasswordTextField(hintText: "Re-enter new password"),
              ],
            ),
            const SizedBox.square(dimension: 32),
            SizedBox(
              width: .infinity,
              child: FilledButton(
                style: ButtonStyle(
                  fixedSize: .all(const Size.fromHeight(56)),
                  backgroundColor: .all(const Color(0xFFE6B014)),
                  shape: .all(
                    const RoundedRectangleBorder(
                      borderRadius: .all(.circular(8)),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Set password",
                  style: AuthConstants.defaultTitleTextStyle.copyWith(
                    color: const Color(0xFF212121),
                    inherit: true,
                    fontSize: 16,
                    letterSpacing: .2,
                    fontWeight: .w600,
                    height: 1.4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
