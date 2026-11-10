import "package:auto_route/auto_route.dart" show AutoRoute, TabsRouter;
import "package:bank_app/features/dashboard/components/bank_bottom_navigation_bar_tile.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart"
    show FicIterableExtension, IList;
import "package:flutter/material.dart";

class RouteInfo({required final String routeName, required final int index});

class const BankBottomNavigationBar({
  required final TabsRouter _tabsRouter,
  super.key,
}) extends StatelessWidget {
  IList<String> _filterAndGetRouteNames(IList<AutoRoute> routes) {
    return routes.retainWhere((route) => !route.name.contains("#Redirect")).map(
      (route) {
        return route.name.replaceFirst(RegExp(r"Page$"), "");
      },
    ).toIList();
  }

  IList<RouteInfo> get _routesInfo {
    final routes = _filterAndGetRouteNames(
      _tabsRouter.routeCollection.routes.toIList(),
    );
    final routesInfo = routes
        .map(
          (routeName) =>
              RouteInfo(routeName: routeName, index: routes.indexOf(routeName)),
        )
        .toIList();

    return routesInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      color: Colors.white,
      child: BankBottomNavigationBarTile(
        activeTabIndex: _tabsRouter.activeIndex,
        onTabSelected: _tabsRouter.setActiveIndex,
        routesInfo: _routesInfo,
      ),
    );
  }
}
