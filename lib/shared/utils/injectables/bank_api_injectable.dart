import "package:flutter/services.dart";
import "package:injectable/injectable.dart";
import "package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart";

@module
abstract class BankApiInjectable {
  @LazySingleton()
  KennedyMegaBankApi get api {
    final basePath = switch (appFlavor) {
      "production" => "http://localhost:3002",
      "staging" => "http://localhost:3001",
      _ => "http://localhost:3000",
    };

    return KennedyMegaBankApi(basePathOverride: basePath);
  }

  // @Environment("production")
  // KennedyMegaBankApi get apiProd {
  //   return KennedyMegaBankApi(basePathOverride: "http://localhost:3002");
  // }

  // @Environment("staging")
  // KennedyMegaBankApi get apiStg {
  //   return KennedyMegaBankApi(basePathOverride: "http://localhost:3001");
  // }

  // @Environment("development")
  // KennedyMegaBankApi get apiDev {
  //   return KennedyMegaBankApi(basePathOverride: "http://localhost:3000");
  // }
}
