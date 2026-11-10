# bank_app (Kennedy Mega Bank)

Mini mobile banking app that displays a customer's static profile data, their
transactions and their running account balance.

## Current Progress (November 2026)

The app has a feature-first structure and currently uses local/mock services
rather than a connected backend. Current UI and navigation work includes:

- A dashboard with Home and Transactions sections, including All, Debit and
  Credit transaction tabs.
- A Settings screen reachable from the dashboard, with profile, account
  settings, about and app-version sections.
- Authentication and sign-up screens, plus routed screens for password reset
  and changing an account email (security check, new email and verification).
- Shared dialog and customer-name helpers.

The account-management routes and screens are UI foundations; they do not
represent a complete backend-connected account recovery or email-change flow.

## Tech stack

* **Flutter** (Dart SDK `>=3.13.0 <4.0.0`), Android + iOS targets
* **State management:** `bloc` / `flutter_bloc` / `bloc_concurrency` /
  `hydrated_bloc`, with `freezed` for events and states
* **Navigation:** `auto_route` (declarative routes in `lib/features/routes/app_routes.dart`)
* **Dependency injection:** `get_it` + `injectable`
* **Backend:** Local/mock implementations today; integration with a custom
  Express REST server; a generated OpenAPI client is available but is not yet
  connected to app repositories
* **Local storage:** `hive`, `shared_preferences`, in-memory storage
* **Other notables:** `flutter_hooks`, `formz`, `flutter_svg`, `flutter_gen`,
  `fast_immutable_collections`, `device_preview`, `multiple_result`, `rxdart`,
  `logger`
* **Lints:** `very_good_analysis`

The full dependency list lives in `pubspec.yaml`; it is the source of truth.

## Project layout

```
lib/
  features/                       Feature modules (feature-first architecture)
    authentication/              Auth wrapper page, sign in / sign up / personal info /
                                upload picture views, auth bloc + repository
    sign_in/                     Sign-in bloc and repository
    sign_up_flow/                Sign-up flow, bloc and repository
    customer_data/               Customer data repository
    customer_partial_personal_info/  Personal info capture (partial)
    customer_full_personal_info/    Personal info capture (full)
    dashboard/                   Dashboard, home and transaction tabs
    settings/                    Settings and profile sections
    change_account_email/        Account email-change flow screens
    set_new_password/            Password reset screen
    welcome/                     Welcome page
    images/                      Image picking / cropping / upload
    routes/                      Auto_route configuration and route observer
  shared/                        Shared/common code
    app/                         Root MaterialApp.router widget
    core/                        Enums, extensions, form inputs, mixins, logger,
                                 bloc providers and observers, storage services
    common/                      Shared models, components and views
    utils/injectables/           Injectable modules
  environment/                   Flavor entrypoints
    main_development.dart
    main_staging.dart
    main_production.dart
  bootstrap.dart                  Shared app bootstrap (DI, bloc observer)
widget_catalog/                  Standalone Widgetbook app for browsing components
test/                            Widget tests
```

Each feature folder follows the same shape: `bloc/` (freezed event/state + bloc),
`repository/`, and `page/` or `views/` plus `components/`.

## Generated code

Generated files are generally not committed (`*.g.dart`, `*.freezed.dart`,
`*.gr.dart`, `*.gen.dart` and `*.config.dart` are git-ignored), so run code
generation after cloning before building the app. The standalone backend
client's serialization files are an exception and are committed with that
package. Builders in use include `freezed`, `json_serializable`,
`auto_route_generator`, `injectable_generator`, `hive_ce_generator` and
`flutter_gen_runner` (see `build.yaml`).

## Generated backend API client

The backend's OpenAPI document is checked in at
[`openapi/kennedy-mega-bank.openapi.json`](openapi/kennedy-mega-bank.openapi.json).
The standalone Dio client generated from it is in
[`packages/kennedy_mega_bank_api/`](packages/kennedy_mega_bank_api/). It is
declared as an app dependency and currently supplies the Dio client for the
authentication SSE data layer; the remaining generated endpoints are not
connected to app repositories, BLoCs, or UI.

With the backend running, regenerate the OpenAPI snapshot and client with:

```bash
bash tool/generate_api_client.sh
```

Set `OPENAPI_SPEC_URL` to use a different backend spec URL. Generation uses
OpenAPI Generator CLI 2.42.0 and generator 7.27.0 (pinned in
`openapitools.json`). The script normalizes the scalar `oneOf` fields
`ErrorResponse.status` and `CreateTransactionRequest.amount` to permissive JSON
values for code generation because the Dart generator emits invalid models for
those unions. The backend contract snapshot remains unchanged; callers should
pass/handle the actual number-or-string values defined by the backend.

The generated package requires Dart 3.8 or later. To validate it after cloning
or generation:

```bash
cd packages/kennedy_mega_bank_api
dart pub get
dart analyze
dart test
```

The generation script also runs `dart fix --apply` to remove unused imports
emitted by the generator and converts the generated models to Freezed models
with `json_serializable`. The API package uses the same analysis options as the
app. Regeneration replaces the generated package; do not put handwritten
integration code in that directory.
The generated client was validated with `dart analyze` and all 82 package tests
passed.

The OpenAPI document defines HTTP-only access and refresh cookies. The generated
client alone does not provide a persistent cookie session; configure and test
Dio cookie handling when connecting authenticated calls. Override the generated
default base URL at runtime as needed: the spec uses a relative server URL, and
`localhost` on a mobile device does not point to the development computer.

The authentication data layer subscribes to `GET /authentication/me/stream`
using Server-Sent Events. The backend must authenticate this route with the same
access-token cookie as `/authentication/me`, send an initial current-user
snapshot, then send another `data:` event containing the existing
`UserEnvelope` JSON whenever the user profile changes. A `data: null` event
clears the current user. The endpoint must use `Content-Type: text/event-stream`
and keep the connection open; this repository does not contain the backend
implementation of that route.

## Getting started

```bash
flutter pub get
dart run build_runner build

# optional: the component catalog is a separate package
cd widget_catalog && flutter pub get && dart run build_runner build
```

Run the app against a connected device, Android emulator or iOS simulator:

```bash
flutter run -t lib/environment/main_development.dart   # or main_staging.dart / main_production.dart
```

VS Code launch configurations for the flavors are in `.vscode/launch.json`, and
Android Studio / IntelliJ run configurations in `.run/`.

## Checks

```bash
flutter analyze
flutter test
```

## Known issues

1. **Authentication and storage are local/mock implementations.** The
   generated backend API client is not yet connected to app repositories.
2. **Customer data is in-memory.** The current local storage service does not
   persist data across app restarts.
3. **Test coverage is limited.** The repository currently has a single app
   test file; automated coverage will be expanded across app features.

## What's Next

1. Connect the standalone generated client to feature repositories, including
   environment-specific base URLs and cookie-session handling.
2. Expand automated tests across authentication, dashboard, transactions and
   settings.
3. Add country selection and use it to adapt transaction direction icons and
   monetary amount formatting to the selected country's conventions (for
   example, Angola and Ghana).
