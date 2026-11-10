# Kennedy Mega Bank API client

This is a standalone Dart/Dio client generated from the Kennedy Mega Bank
backend's OpenAPI specification. It provides typed methods and request/response
models for the documented endpoints.

The client is **not currently connected** to the main app's repositories,
BLoCs, or UI. This guide describes how to add and use it in the Flutter app
when you're ready to integrate the backend.

## Requirements

- Dart 3.8 or later
- The Kennedy Mega Bank API server
- Dio 5 (included as a dependency of this package)

## 1. Add the package to the Flutter app

From the repository root, add the local package dependency:

```bash
flutter pub add "kennedy_mega_bank_api@{path: packages/kennedy_mega_bank_api}"
```

Or add this to the root `pubspec.yaml` manually:

```yaml
dependencies:
  kennedy_mega_bank_api:
    path: packages/kennedy_mega_bank_api
```

Then resolve packages:

```bash
flutter pub get
```

The API client package is intentionally separate from the app. It has its own
`pubspec.yaml`, generated source, dependencies, and tests. Do not copy its
generated files into `lib/` or edit generated API/model files by hand.

## Writing tests for the API package

The package tests live in `test/`. Most files there are generated starter
tests: replace their `TODO` bodies with meaningful assertions, and remove any
unused placeholder variables. Keep handwritten test code in `test/`; never put
test-specific logic in generated files under `lib/src/`.

Choose the test type that matches the behavior:

- **Model tests** check the generated model's public behavior: construction,
  defaults, equality, enum values, and `fromJson`/`toJson` mapping. Use small
  maps with representative API-shaped data, and check both the value and JSON
  key where appropriate.
- **API method tests** check the request and response boundary. Use a fake
  `Dio` adapter to return a controlled response without needing a running
  backend. Verify the HTTP method/path, request body or headers when relevant,
  and that the response is decoded to the expected generated model. Include
  relevant error cases, such as a non-success status or malformed response.
- **Live-backend integration tests** are for behavior that requires a real
  server, such as authentication and cookie handling. Keep these separate from
  the fast, deterministic package tests so `dart test` does not unexpectedly
  require a server, credentials, or network access.

For each test, arrange the inputs and dependencies, perform one operation, then
assert observable behavior with `expect`. Prefer testing the public API over
generated implementation details. Use harmless fixture data, never real
credentials, tokens, cookies, or customer data. If a test creates a `Dio`
instance, close it with `addTearDown`; if you install a fake adapter, have it
return only the response needed for that test.

Here is an **illustrative model-test pattern**. It exercises a default and a
JSON round-trip; use the corresponding model, required fields, and expected
values for the behavior you are testing rather than copying this as a test for
every model:

```dart
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';
import 'package:test/test.dart';

void main() {
  test('account request applies its default currency and round-trips JSON',
      () {
    final request = CreateAccountRequest(
      accountType: CreateAccountRequestAccountTypeEnum.savings,
    );

    expect(request.currency, 'USD');

    final decoded = CreateAccountRequest.fromJson(request.toJson());
    expect(decoded.accountType, CreateAccountRequestAccountTypeEnum.savings);
    expect(decoded.currency, 'USD');
    expect(request.toJson(), {
      'accountType': 'savings',
      'currency': 'USD',
    });
  });
}
```

From `packages/kennedy_mega_bank_api/`, run a single test file while
developing, then analyze and run the complete package suite before committing:

```bash
dart test test/create_account_request_test.dart
dart analyze
dart test
```

When the OpenAPI client is regenerated, its generated test files can also be
replaced. Review those changes, restore any useful handwritten assertions in
the test files, and rerun the checks above.

## 2. Configure the API URL for the device

Create one `KennedyMegaBankApi` instance and share it across the app. Its
generated default base URL is `http://localhost`, which does **not** include
the development server's port and usually is not the correct host when running
on an emulator or phone. Set `basePathOverride` explicitly:

```dart
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';

final api = KennedyMegaBankApi(
  basePathOverride: 'http://10.0.2.2:3000',
);
```

Common local-development addresses:

| Where the app runs | Example base URL |
|---|---|
| Android emulator | `http://10.0.2.2:3000` |
| iOS simulator | `http://localhost:3000` |
| Physical device | `http://<computer-LAN-IP>:3000` |
| Deployed environment | The HTTPS URL for that environment |

Use your actual host/port and configure development, staging, and production
values independently. A physical phone and an emulator cannot generally use
the computer's `localhost`. Ensure the backend listens on a network interface
reachable by the device. For production, use HTTPS.

## 3. Register the client once in dependency injection

The app already uses `get_it` and `injectable`. Register the client as a
singleton (or lazy singleton) in the app's dependency-injection setup, using
the base URL selected for the current flavor. For example, a small module can
provide the shared client:

```dart
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BackendApiModule {
  @lazySingleton
  KennedyMegaBankApi get api => KennedyMegaBankApi(
        basePathOverride: 'http://10.0.2.2:3000',
      );
}
```

Replace the example URL with your environment configuration. If you inject
`Dio` yourself to add interceptors or cookie handling, pass that instance to
`KennedyMegaBankApi(dio: dio, basePathOverride: ...)` and keep using the same
client instance throughout the app.

## 4. Call typed methods from a repository

Use the API groups exposed by the client rather than calling Dio directly.
Generated method names are based on the OpenAPI paths and HTTP operations.
For example, the health endpoint can be called like this:

```dart
final response = await api.getSystemApi().healthGet();
final health = response.data;

print(health?.status);
print(health?.environment);
```

To sign in, pass the generated request model. The successful response is
deserialized to `CreatedUser`:

```dart
final response = await api.getAuthenticationApi().authenticationLoginPost(
  emailPasswordRequest: EmailPasswordRequest(
    email: email,
    password: password,
  ),
);

final signedInUser = response.data;
```

A repository in the app can own the client and expose an app-level method to
its BLoC:

```dart
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';

class SignInRepository {
  SignInRepository(this._api);

  final KennedyMegaBankApi _api;

  Future<CreatedUser?> signIn({
    required String email,
    required String password,
  }) async {
    final response =
        await _api.getAuthenticationApi().authenticationLoginPost(
              emailPasswordRequest: EmailPasswordRequest(
                email: email,
                password: password,
              ),
            );
    return response.data;
  }
}
```

Inject the repository into the BLoC as the app already does. Keep generated
API models and Dio details in the data/repository layer; if the app needs a
different model, map the API response to that model there. The UI and BLoC
should not construct `Dio` requests or depend on the generated API classes.

The generated groups are available from the client:

```dart
api.getSystemApi();          // Health
api.getAuthenticationApi(); // Registration, login, verification, etc.
api.getAccountDetailsApi(); // Names and profile picture
api.getAccountsApi();        // Account creation
api.getTransactionsApi();   // Transactions
```

Methods return Dio `Response<T>` values; decoded content is in `response.data`.
Non-success HTTP statuses and transport/serialization failures are generally
reported as `DioException`. Catch it at the repository boundary and translate
it to the app's normal error/result type:

```dart
import 'package:dio/dio.dart';

try {
  final response = await api.getSystemApi().healthGet();
  return response.data;
} on DioException {
  // Translate the network failure to the app's Result/error type here.
  rethrow;
}
```

Do not log passwords, authentication cookies, tokens, or sensitive account and
transaction data.

## Authentication and cookies: important limitation

The backend authenticates using HTTP-only `accessToken` and `refreshToken`
cookies. The generated client describes which operations require those
cookies, but does **not** itself persist cookies between requests. Calling login
without cookie handling does not guarantee that later authenticated requests
will include the cookies.

For native Flutter targets, add a cookie manager and cookie jar to the app:

```bash
flutter pub add dio_cookie_manager cookie_jar
```

Attach the cookie manager to the same Dio instance used by the generated API
client. The jar captures `Set-Cookie` responses (for example, from login) and
adds applicable cookies to later requests:

```dart
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';

final dio = Dio(
  BaseOptions(baseUrl: 'http://10.0.2.2:3000'),
);
dio.interceptors.add(CookieManager(CookieJar()));

final api = KennedyMegaBankApi(dio: dio);
```

This example uses an in-memory jar, so cookies are lost when the process exits.
If the session must persist across restarts, select and evaluate an appropriate
secure persistence strategy for the target platform; authentication cookies
are credentials and should not be stored in ordinary preferences or logged.
For Flutter web, browser credential inclusion and the backend's credentialed
CORS origin must also be configured and tested for the actual deployment.

Do not manually read, store, or attach the HTTP-only token values in app code.
Verify login, a protected request, refresh, and logout on each platform before
considering the authentication integration complete.

## Updating the client from the backend

The source OpenAPI snapshot is at
[`../../openapi/kennedy-mega-bank.openapi.json`](../../openapi/kennedy-mega-bank.openapi.json).
From the repository root, with the backend running, refresh the snapshot and
regenerate the client:

```bash
bash tool/generate_api_client.sh
```

The `OPENAPI_SPEC_URL` environment variable can override the default spec URL
(`http://localhost:3000/api-docs.json`). The generator script also performs the
necessary normalization for two scalar `oneOf` fields that the Dart generator
does not handle correctly. Review regenerated model/API changes and rerun
validation before committing:

```bash
cd packages/kennedy_mega_bank_api
dart pub get
dart analyze
dart test
```

The generator replaces the contents of this package directory. Keep handwritten
app integration code in the main app, not in the generated package directory.

## Troubleshooting

- **Connection refused / timeout:** Check that the backend is running and
  reachable from the device, and that the configured URL includes the correct
  host and port.
- **401 on a protected operation:** Confirm that login returned cookies, the
  cookie manager is attached to the same Dio instance, and the request uses the
  same API client. Check backend cookie attributes, HTTPS requirements, and
  CORS credentials for the selected platform.
- **Unexpected response decoding error:** Compare the response body with the
  OpenAPI contract and refresh/regenerate the client if the backend schema has
  changed.
- **Clear a session on logout:** Call the generated logout endpoint, then clear
  the cookie jar using its supported API if necessary. Test the behavior with
  the backend rather than assuming logout cleared local cookies.

## Publishing

This package is currently local to the repository and has `publish_to: none`.
It is not available from pub.dev. To use it in another repository, publish it
only after setting appropriate package metadata, license, versioning, and
release documentation.
