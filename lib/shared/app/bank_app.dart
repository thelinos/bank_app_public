import "package:bank_app/features/routes/app_routes.dart";
import "package:bank_app/features/routes/observer/bank_app_route_observer.dart";
import "package:get_it/get_it.dart";
import "package:material_ui/material_ui.dart";

final AppRoutes _appRoutes = GetIt.I.get<AppRoutes>();

class BankApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "OpenSans"),
      title: "Bank App",
      routerConfig: _appRoutes.config(
        navigatorObservers: () => [BankAppRouteObserver()],
      ),
    );
  }
}
