import "package:auto_route/auto_route.dart";
import "package:bank_app/features/authentication/bloc/authentication_bloc.dart";
import "package:bank_app/features/sign_up_flow/sign_up/bloc/sign_up_bloc.dart";
import "package:bank_app/shared/common/components/email_text_field.dart";
import "package:bank_app/shared/common/components/password_text_field.dart";
import "package:bank_app/shared/common/components/primary_button.dart";
import "package:bank_app/shared/common/constants.dart";
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:formz/formz.dart";
import "package:gap/gap.dart";

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xff022E64),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: context.screenWidth,
          height: context.screenHeight,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
            gradient: Constants.kStartGradients,
          ),
          child: Column(
            children: [
              const Spacer(flex: 4),
              Image.asset(
                "assets/images/app_icon.png",
                width: 100,
                height: 40,
              ),
              const Spacer(flex: 3),
              Text(
                "Sign Up",
                textScaler: context.dynamicTextScaler,
                style: const TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 0,
                  letterSpacing: 0.18,
                ),
              ),
              const Gap(8),
              FittedBox(
                child: Text(
                  "New to the FBN Mobile App?\nSign up and let’s get started",
                  textScaler: context.dynamicTextScaler,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFFF5F5F5),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.18,
                  ),
                ),
              ),
              const Spacer(flex: 3),
              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  final SignUpState(:email) = state;
                  return EmailTextField(
                    onChanged: (value) {
                      context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.onEmailChanged(value: value));
                    },
                    errorText: email.displayError?.message,
                  );
                },
              ),
              const Spacer(),
              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  final SignUpState(:password) = state;
                  return PasswordTextField(
                    hintText: "Enter password",
                    onChanged: (value) {
                      context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.onPasswordChanged(value: value));
                    },
                    errorText: password.displayError?.message,
                  );
                },
              ),
              const Spacer(),
              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  final SignUpState(:reEnteringPasswordError) = state;
                  return PasswordTextField(
                    hintText: "Re-enter password",
                    onChanged: (value) {
                      context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.onReEnteringPassword(value: value));
                    },
                    errorText: reEnteringPasswordError,
                  );
                },
              ),
              const Spacer(flex: 2),
              BlocConsumer<SignUpBloc, SignUpState>(
                listenWhen: (previous, current) =>
                    previous.errorMessage != current.errorMessage,
                listener: (context, signUpState) {
                  final SignUpState(:errorMessage) = signUpState;

                  if (errorMessage != null) {
                    context.showGenericSnackbar(
                      text: errorMessage,
                      backgroundColor: Colors.redAccent,
                      borderColor: Colors.red,
                    );
                  }
                },
                builder: (context, state) {
                  final SignUpState(:status) = state;

                  if (status.isInProgress) {
                    return PrimaryButton(
                      buttonContent: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator.adaptive(
                              strokeCap: StrokeCap.round,
                              backgroundColor: Colors.black,
                              strokeWidth: 3,
                            ),
                          ),
                          const Gap(10),
                          Text(
                            "Continuing",
                            textScaler: context.dynamicTextScaler,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return PrimaryButton(
                    onTap: () {
                      context
                          .read<SignUpBloc>()
                          .add(const SignUpEvent.onFormsSubmitted());
                    },
                    buttonContent: Text(
                      "Continue",
                      textScaler: context.dynamicTextScaler,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
              const Spacer(flex: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    textScaler: context.dynamicTextScaler,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(8),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<AuthenticationBloc>()
                          .add(const AuthenticationEvent.logIn());
                    },
                    child: Text(
                      "Sign In",
                      textScaler: context.dynamicTextScaler,
                      style: const TextStyle(
                        color: Color(0xFFE6B014),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
