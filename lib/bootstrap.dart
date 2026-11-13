import "dart:async";

import "package:bank_app/features/sign_in/data/sign_in_data.dart"
    show SignInData;
import "package:bank_app/shared/core/bank_blocs/bloc_observers.dart";
import "package:bank_app/shared/core/storage/local_storage_service.dart";
import "package:bank_app/shared/utils/injectables/injectable.dart";
import "package:device_preview/device_preview.dart";
import "package:get_it/get_it.dart" show GetIt;
// import "package:flutter_native_splash/flutter_native_splash.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart"
    show KennedyMegaBankApi;
import "package:material_ui/material_ui.dart";
import "package:path_provider/path_provider.dart";

FutureOr<void> bootstrap(FutureOr<Widget> Function() builder) async {
  configureDependencies();

  final appDir = await getApplicationDocumentsDirectory();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(appDir.path),
  );

  _registerSingletons();

  await LocalStorageService.init();

  Bloc.observer = BlocObservers();

  // FlutterNativeSplash.remove();

  DevicePreview.enable();

  runApp(await builder());
}

void _registerSingletons() {
  final getItInstance = GetIt.I;
  getItInstance.registerLazySingleton<SignInData>(
    () => SignInData(api: getItInstance.get<KennedyMegaBankApi>()),
  );
}
