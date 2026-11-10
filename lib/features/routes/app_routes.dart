import "package:auto_route/auto_route.dart";
import "package:bank_app/features/routes/app_routes.gr.dart";
import "package:injectable/injectable.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
@lazySingleton
class AppRoutes extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
    AutoRoute(
      path: "/authentication_wrapper",
      page: AuthenticationWrapperPage.page,
      children: [
        AutoRoute(path: "sign_in", page: SignInPage.page),
        AutoRoute(
          path: "sign_up_flow_page",
          page: SignUpFlowPages.page,
          children: [
            AutoRoute(initial: true, path: "sign_up", page: SignUpPage.page),
            AutoRoute(path: "personal_info", page: PersonalInfoPage.page),
            AutoRoute(
              path: "upload_customer_pic",
              page: UploadCustomerPicPage.page,
            ),
          ],
        ),
        AutoRoute(path: "forgot_password", page: ForgotPasswordPage.page),
        AutoRoute(path: "loading", page: LoadingPage.page),
      ],
    ),
    AutoRoute(path: "/settings", page: SettingsPage.page),
    AutoRoute(
      initial: true,
      path: "/dashboard",
      page: DashboardPage.page,
      children: [
        AutoRoute(initial: true, path: "home", page: HomePage.page),
        AutoRoute(
          path: "transactions",
          page: TransactionsPage.page,
          children: [
            AutoRoute(
              initial: true,
              path: "all_transactions",
              page: AllTransactionsPage.page,
            ),
            AutoRoute(path: "debit", page: DebitPage.page),
            AutoRoute(path: "credit", page: CreditPage.page),
          ],
        ),
      ],
    ),

    AutoRoute(path: "/set_new_password", page: SetNewPasswordPage.page),
    AutoRoute(
      path: "/change_account_email",
      page: ChangeAccountEmailPage.page,
      children: [
        AutoRoute(
          initial: true,
          path: "security_check",
          page: SecurityCheckPage.page,
        ),
        AutoRoute(path: "set_new_email", page: SetNewEmailPage.page),
        AutoRoute(path: "verify_email", page: VerifyEmailPage.page),
      ],
    ),
  ];
}
