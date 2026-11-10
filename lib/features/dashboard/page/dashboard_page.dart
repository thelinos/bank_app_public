import "package:auto_route/auto_route.dart";
import "package:bank_app/features/dashboard/components/bank_bottom_navigation_bar.dart"
    show BankBottomNavigationBar;
import "package:bank_app/features/dashboard/components/dashboard_app_bar.dart"
    show DashboardAppBar;
import "package:bank_app/features/routes/app_routes.gr.dart"
    show HomePage, TransactionsPage;
import "package:fast_immutable_collections/fast_immutable_collections.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";

@RoutePage()
class DashboardPage extends HookWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.builder(
      builder: (context, children, tabsRouter) {
        return Scaffold(
          appBar: const DashboardAppBar(),
          body: children.lock.get(tabsRouter.activeIndex),
          bottomNavigationBar: BankBottomNavigationBar(tabsRouter: tabsRouter),
        );
      },
      routes: const <PageRouteInfo<Object?>>[HomePage(), TransactionsPage()],
    );
  }
}
