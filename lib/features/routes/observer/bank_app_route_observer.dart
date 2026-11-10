import "package:auto_route/auto_route.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:flutter/widgets.dart";

class BankAppRouteObserver extends AutoRouterObserver {
  @override
  Future<void> didPush(Route<void> route, Route<void>? previousRoute) async {
    BankLogger.info(
      "New route pushed: ${route.settings.name} from ${previousRoute?.settings.name ?? "null"}",
    );
  }

  @override
  Future<void> didInitTabRoute(
    TabPageRoute route,
    TabPageRoute? previousRoute,
  ) async {
    BankLogger.info("Tab route visited: ${route.name}");
  }

  @override
  Future<void> didChangeTabRoute(
    TabPageRoute route,
    TabPageRoute previousRoute,
  ) async {
    BankLogger.info("Tab route re-visited: ${route.name}");
  }

  @override
  Future<void> didPop(Route<void> route, Route<void>? previousRoute) async {
    BankLogger.info("Route popped: ${route.settings.name ?? "null"}");
  }

  @override
  Future<void> didRemove(Route<void> route, Route<void>? previousRoute) async {
    BankLogger.info("Route removed: ${route.settings.name ?? "null"}");
  }

  @override
  Future<void> didReplace({
    Route<void>? newRoute,
    Route<void>? oldRoute,
  }) async {
    BankLogger.info("Route replaced: ${newRoute?.settings.name ?? "null"}");
  }
}
