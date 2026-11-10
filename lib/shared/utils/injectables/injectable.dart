import "package:bank_app/shared/utils/injectables/injectable.config.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";

final GetIt _getIt = GetIt.I;
@InjectableInit(preferRelativeImports: true)
void configureDependencies() {
  _getIt.init();
}
