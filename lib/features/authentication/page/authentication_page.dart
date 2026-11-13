import "package:auto_route/auto_route.dart";
// import "package:bank_app/features/authentication/bloc/authentication_bloc.dart";
// import "package:bank_app/features/customer_partial_personal_info/bloc/customer_partial_personal_info_bloc.dart";
// import "package:bank_app/features/routes/app_routes.gr.dart";
// import "package:bank_app/features/sign_up/bloc/sign_up_bloc.dart";
import "package:material_ui/material_ui.dart";
// import "package:flutter_bloc/flutter_bloc.dart";

@RoutePage()
class AuthenticationWrapperPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    return const AutoRouter();
    // return BlocConsumer<AuthenticationBloc, AuthenticationState>(
    //   listener: (context, authenticationState) {
    //     // Crash reporting removed
    //   },
    //   builder: (context, authenticationState) {
    //     return BlocBuilder<SignUpBloc, SignUpState>(
    //       builder: (context, signupState) {
    //         return BlocBuilder<
    //           CustomerPartialPersonalInfoBloc,
    //           CustomerPartialPersonalInfoState
    //         >(
    //           builder: (context, customerPartialPersonalInfoState) {
    //             return AutoRouter.declarative(
    //               routes: (handler) => <PageRouteInfo>[
    //                 ...switch (authenticationState) {
    //                   Authenticated() => <PageRouteInfo>[
    //                     const SignInPage(),
    //                     const ForgotPasswordPage(),
    //                     const DashboardPage(),
    //                     const SignUpWrapperPage(),
    //                     // if (signupState.status.isSuccess) ...[
    //                     //   const PersonalInfoPage(),
    //                     // ] else if (customerPartialPersonalInfoState
    //                     //     .status
    //                     //     .isSuccess) ...[
    //                     //   const UploadCustomerPicPage(),
    //                     //   // use the status of the method that sets the
    //                     //   // profile image to be the checker for displaying
    //                     //   // the dashboard page.
    //                     // ] else ...[
    //                     //   const DashboardPage(),
    //                     // ],
    //                   ],
    //                   UnAuthenticated() => <PageRouteInfo>[
    //                     const SignInPage(),
    //                     const ForgotPasswordPage(),
    //                     const SignUpWrapperPage(),
    //                     const DashboardPage(),
    //                   ],
    //                   Unknown() => <PageRouteInfo>[const LoadingPage()],
    //                 },
    //               ],
    //             );
    //           },
    //           buildWhen: (previous, current) =>
    //               previous.status != current.status,
    //         );
    //       },
    //       buildWhen: (previous, current) => previous.status != current.status,
    //     );
    //   },
    // );
  }
}
