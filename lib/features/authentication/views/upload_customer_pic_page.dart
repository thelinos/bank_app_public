import "dart:io";

import "package:auto_route/auto_route.dart";
import "package:bank_app/features/authentication/bloc/authentication_bloc.dart";
import "package:bank_app/features/authentication/bloc_listener/picture_failure_listener.dart";
import "package:bank_app/features/authentication/components/upload_customer_picture_button_shape.dart";
import "package:bank_app/features/customer_full_personal_info/bloc/customer_full_personal_info_bloc.dart";
import "package:bank_app/shared/common/components/primary_button.dart";
import "package:bank_app/shared/common/constants.dart";
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:formz/formz.dart";
import "package:gap/gap.dart";
import "package:iconsax/iconsax.dart";
import "package:material_ui/material_ui.dart";

@RoutePage()
class UploadCustomerPicPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [PictureFailureListener()],
      child: Scaffold(
        backgroundColor: const Color(0xff022E64),
        appBar: AppBar(
          backgroundColor: const Color(0xff022E64),
          leadingWidth: 28,
          centerTitle: false,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              onPressed: () {
                context
                    .read<AuthenticationBloc>()
                    .add(const AuthenticationEvent.logIn());
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
              context
                  .read<AuthenticationBloc>()
                  .add(const AuthenticationEvent.logIn());
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
            decoration: const BoxDecoration(
              gradient: Constants.kStartGradients,
            ),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  "One Last Thing",
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
                Text(
                  "This is the last thing, we promise.\n Upload a profile photo and we are done",
                  textScaler: context.dynamicTextScaler,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFFF5F5F5),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.18,
                  ),
                ),
                const Spacer(),
                BlocConsumer<CustomerFullPersonalInfoBloc,
                    CustomerFullPersonalInfoState>(
                  listenWhen: (previous, current) =>
                      previous.picErrorMessage != current.picErrorMessage,
                  listener: (context, customerFullPersonalInfoState) {
                    final CustomerFullPersonalInfoState(:picErrorMessage) =
                        customerFullPersonalInfoState;

                    if (picErrorMessage != null) {
                      context.showGenericSnackbar(
                        text: picErrorMessage,
                        backgroundColor: Colors.redAccent,
                        borderColor: Colors.red,
                      );
                    }
                  },
                  builder: (context, state) {
                    final CustomerFullPersonalInfoState(:customerPic) = state;
                    final whenNoPicSelected = <Widget>[
                      Icon(
                        Iconsax.camera5,
                        size: 52,
                        color: const Color(0xff212121)..withValues(alpha: 0.6),
                      ),
                      Text(
                        "Upload",
                        textScaler: context.dynamicTextScaler,
                        style: TextStyle(
                          color: const Color(0xFF212121).withValues(alpha: 0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ].lock;

                    return GestureDetector(
                      onTap: () async {
                        await context.showTakeOrSelectPicBottomSheet(
                          onTakingPic: () async {
                            context.read<CustomerFullPersonalInfoBloc>().add(
                                  const CustomerFullPersonalInfoEvent
                                      .pictureTaken(),
                                );
                          },
                          onSelectingPic: () {
                            context.read<CustomerFullPersonalInfoBloc>().add(
                                  const CustomerFullPersonalInfoEvent
                                      .pictureSelected(),
                                );
                          },
                        );
                      },
                      child: ClipPath(
                        clipper: UploadCustomerPictureButtonShape(),
                        child: Container(
                          width: context.screenWidth * 0.6,
                          height: context.screenHeight * 0.28,
                          decoration: const BoxDecoration(
                            color: Color(0xffF5F5F5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: customerPic == null
                                ? whenNoPicSelected.unlock
                                : [
                                    Image.file(File(customerPic.path)),
                                  ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const Spacer(),
                BlocConsumer<CustomerFullPersonalInfoBloc,
                    CustomerFullPersonalInfoState>(
                  listenWhen: (previous, current) =>
                      previous.errorMessage != current.errorMessage,
                  listener: (context, customerFullPersonalInfoState) {
                    final CustomerFullPersonalInfoState(:errorMessage) =
                        customerFullPersonalInfoState;

                    if (errorMessage != null) {
                      context.showGenericSnackbar(
                        text: errorMessage,
                        backgroundColor: Colors.redAccent,
                        borderColor: Colors.red,
                      );
                    }
                  },
                  builder: (context, state) {
                    final CustomerFullPersonalInfoState(:status) = state;

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
                              "Signing up",
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
                        context.read<AuthenticationBloc>().add(
                              const AuthenticationEvent.userReloaded(),
                            );

                        context.read<CustomerFullPersonalInfoBloc>().add(
                              const CustomerFullPersonalInfoEvent
                                  .submittingCustomerPic(),
                            );
                      },
                      buttonContent: Text(
                        "Sign Up",
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
                const Spacer(flex: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
