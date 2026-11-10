# bank_app (Kennedy Mega Bank)

Mini mobile banking app that displays a customer's static profile data, their
transactions and their running account balance.

## Current Progress (November 2026)

The app has a feature-first structure. The dashboard and customer data still
use local/mock services, while the sign-in data layer makes a request through
the generated API client. Current UI and navigation work includes:

- A dashboard with Home and Transactions sections, including All, Debit and
  Credit transaction tabs.
- A Settings screen reachable from the dashboard, with profile, account
  settings, about and app-version sections.
- Authentication and sign-up screens, plus routed screens for password reset
  and changing an account email (security check, new email and verification).
- Shared dialog and customer-name helpers.

The account-management routes and screens are UI foundations; they do not
represent a complete backend-connected account recovery or email-change flow.
The generated client's current-user stream and logout helpers are also not yet
connected to the app's authentication repository and BLoCs.

## Tech stack

* **Flutter** (Dart SDK `>=3.13.0 <4.0.0`), Android + iOS targets
* **State management:** `bloc` / `flutter_bloc` / `bloc_concurrency` /
  `hydrated_bloc`, with `freezed` for events and states
* **Navigation:** `auto_route` (declarative routes in `lib/features/routes/app_routes.dart`)
* **Dependency injection:** `get_it` + `injectable`
* **Backend:** Local/mock dashboard and customer data; the generated OpenAPI
  client is partially integrated for sign-in, with most endpoints not yet
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
declared as an app dependency and is used by the sign-in data layer to call the
generated authentication login endpoint. Current-user SSE and logout helpers
exist in the app but are not yet wired into its authentication repository or
BLoCs; the remaining generated endpoints are not connected to app repositories,
BLoCs, or UI.

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

The `AuthenticationData` helper implements a Server-Sent Events subscription to
`GET /authentication/me/stream`, but it is not wired into the app's auth flow
yet. The backend must authenticate this route with the same access-token cookie
as `/authentication/me`, send an initial current-user snapshot, then send
another `data:` event containing the existing `UserEnvelope` JSON whenever the
user profile changes. A `data: null` event clears the current user. The endpoint
must use `Content-Type: text/event-stream` and keep the connection open; this
repository does not contain the backend implementation of that route.

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

The app does not currently load `.env` files or include checked-in IDE launch
configurations. Configure runtime API base URLs as part of the planned
environment-specific backend integration.

## Checks

```bash
flutter analyze
flutter test
```

## Known issues

1. **Backend integration is partial.** Sign-in calls the generated login
   endpoint, but the session lifecycle (including cookie handling and current
   user updates) and the remaining backend endpoints are not wired into app
   repositories and BLoCs.
2. **Customer data is in-memory.** The current local storage service does not
   persist data across app restarts.
3. **Test coverage is limited.** Four test files currently cover the app shell,
   authentication data, SSE parsing and stream utilities. Feature-level
   coverage for the dashboard, transactions and settings remains to be added.

## What's Next

1. Complete backend integration: configure environment-specific base URLs and
   cookie-session handling, then connect the generated client to authentication
   and other feature repositories.
2. Expand automated tests across authentication, dashboard, transactions and
   settings.
3. Add country selection and use it to adapt transaction direction icons and
   monetary amount formatting to the selected country's conventions (for
   example, Angola and Ghana).
