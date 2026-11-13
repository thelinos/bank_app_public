import "package:auto_route/auto_route.dart";
import "package:bank_app/features/authentication/bloc/authentication_bloc.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/features/customer_partial_personal_info/bloc/customer_partial_personal_info_bloc.dart";
import "package:bank_app/features/customer_partial_personal_info/repository/customer_partial_personal_info_repository.dart";
import "package:bank_app/shared/common/components/first_name_text_field.dart";
import "package:bank_app/shared/common/components/last_name_text_field.dart";
import "package:bank_app/shared/common/components/primary_button.dart";
import "package:bank_app/shared/common/constants.dart";
import "package:bank_app/shared/core/enums/gender.dart";
import "package:bank_app/shared/core/enums/title.dart";
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:formz/formz.dart";
import "package:gap/gap.dart";
import "package:material_ui/material_ui.dart";

@RoutePage()
class PersonalInfoPage extends StatelessWidget implements AutoRouteWrapper {
  const new({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CustomerPartialPersonalInfoBloc>(
      create: (context) => CustomerPartialPersonalInfoBloc(
        authenticationRepository: context.read<AuthenticationRepository>(),
        partialPersonalInfoRepository:
            context.read<CustomerPartialPersonalInfoRepository>(),
      )..add(
          const CustomerPartialPersonalInfoEvent.authSubscriptionRequested(),
        ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Almost Done",
                textScaler: context.dynamicTextScaler,
                style: const TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 0,
                  letterSpacing: 0.18,
                ),
              ),
              Text(
                "Let us know more about you.\n Who doesn’t like to be recognized?",
                textScaler: context.dynamicTextScaler,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.18,
                ),
              ),
              const Spacer(flex: 2),
              FirstNameTextField(
                onChanged: (value) {
                  context.read<CustomerPartialPersonalInfoBloc>().add(
                        CustomerPartialPersonalInfoEvent.getCustomersFirstName(
                          value: value,
                        ),
                      );
                },
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownMenu<Gender>(
                    initialSelection: Gender.male,
                    inputDecorationTheme: const InputDecorationTheme(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                    ),
                    dropdownMenuEntries: Gender.values
                        .map<DropdownMenuEntry<Gender>>(
                          (gender) => DropdownMenuEntry<Gender>(
                            value: gender,
                            label: gender.genderRecord.localValue,
                          ),
                        )
                        .toList(),
                    onSelected: (gender) {
                      if (gender == null) return;

                      context.read<CustomerPartialPersonalInfoBloc>().add(
                            CustomerPartialPersonalInfoEvent.getCustomersGender(
                              gender: gender,
                            ),
                          );
                    },
                  ),
                  DropdownMenu<BankTitle>(
                    initialSelection: BankTitle.mr,
                    inputDecorationTheme: const InputDecorationTheme(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                    ),
                    dropdownMenuEntries: BankTitle.values
                        .map<DropdownMenuEntry<BankTitle>>(
                          (title) => DropdownMenuEntry<BankTitle>(
                            value: title,
                            label: title.titleRecord.localValue,
                          ),
                        )
                        .toList(),
                    onSelected: (title) {
                      if (title == null) return;
                      context.read<CustomerPartialPersonalInfoBloc>().add(
                            CustomerPartialPersonalInfoEvent.getCustomersTitle(
                              title: title,
                            ),
                          );
                    },
                  ),
                ],
              ),
              const Gap(16),
              LastNameTextField(
                onChanged: (value) {
                  context.read<CustomerPartialPersonalInfoBloc>().add(
                        CustomerPartialPersonalInfoEvent.getCustomersLastName(
                          value: value,
                        ),
                      );
                },
              ),
              const Spacer(),
              BlocConsumer<CustomerPartialPersonalInfoBloc,
                  CustomerPartialPersonalInfoState>(
                listenWhen: (previous, current) =>
                    previous.errorMessage != current.errorMessage,
                listener: (context, customerPartialPersonalInfoState) {
                  final CustomerPartialPersonalInfoState(:errorMessage) =
                      customerPartialPersonalInfoState;

                  if (errorMessage != null) {
                    context.showGenericSnackbar(
                      text: errorMessage,
                      backgroundColor: Colors.redAccent,
                      borderColor: Colors.red,
                    );
                  }
                },
                builder: (context, state) {
                  final CustomerPartialPersonalInfoState(:status) = state;

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
                      context.read<CustomerPartialPersonalInfoBloc>().add(
                            const CustomerPartialPersonalInfoEvent
                                .submitCustomerDetail(),
                          );
                      context
                          .read<AuthenticationBloc>()
                          .add(const AuthenticationEvent.uploadCustomerPic());
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
              const Spacer(flex: 10),
            ],
          ),
        ),
      ),
    );
  }
}
