import "package:auto_route/auto_route.dart";
import "package:auto_size_text/auto_size_text.dart";
import "package:bank_app/features/authentication/bloc/authentication_bloc.dart";
import "package:bank_app/shared/common/components/email_text_field.dart";
import "package:bank_app/shared/common/components/primary_button.dart";
import "package:bank_app/shared/common/constants.dart";
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:material_ui/material_ui.dart";

@RoutePage()
class ForgotPasswordPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff022E64),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff022E64),
        leadingWidth: 28,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
              context.read<AuthenticationBloc>().add(
                const AuthenticationEvent.logIn(),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 24,
              color: Colors.white,
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () {
            context.read<AuthenticationBloc>().add(
              const AuthenticationEvent.logIn(),
            );
          },
          child: const Text(
            "Back",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: Image.asset(
              "assets/images/app_icon.png",
              width: 96,
              height: 32,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: context.screenWidth,
          height: context.screenHeight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(gradient: Constants.kStartGradients),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Text(
                "Email",
                textScaler: context.dynamicTextScaler,
                style: const TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 0,
                  letterSpacing: 0.18,
                ),
              ),
              const SizedBox(
                width: 240,
                child: AutoSizeText(
                  "Enter the email for the account you want to reset your password for",
                  maxLines: 2,
                  textScaleFactor: 1.1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF5F5F5),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.18,
                  ),
                ),
              ),
              const Spacer(flex: 2),
              const EmailTextField(),
              const Spacer(),
              PrimaryButton(
                buttonContent: Text(
                  "Continue",
                  textScaler: context.dynamicTextScaler,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(flex: 8),
            ],
          ),
        ),
      ),
    );
  }
}
