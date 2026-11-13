import "package:auto_route/auto_route.dart" show RoutePage;
import "package:bank_app/features/settings/components/about.dart" show About;
import "package:bank_app/features/settings/components/account_settings.dart"
    show AccountSettings;
import "package:bank_app/features/settings/components/app_version.dart"
    show AppVersion;
import "package:bank_app/features/settings/components/profile_card.dart"
    show ProfileCard;
import "package:bank_app/features/settings/components/settings_app_bar.dart"
    show SettingsAppBar;
import "package:material_ui/material_ui.dart"
    show BuildContext, Column, Scaffold, Spacer, StatelessWidget, Widget;

@RoutePage()
class const SettingsPage({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SettingsAppBar(),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          ProfileCard(),
          AccountSettings(),
          About(),
          Spacer(),
          AppVersion(),
        ],
      ),
    );
  }
}
