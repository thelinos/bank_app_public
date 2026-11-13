import "package:bank_app/features/settings/components/personal_information.dart" show PersonalInformation;
import "package:bank_app/features/settings/components/profile.dart" show Profile;
import "package:material_ui/material_ui.dart"
    show
        Align,
        BuildContext,
        Color,
        ColoredBox,
        Container,
        Row,
        Stack,
        StatelessWidget,
        Widget;

class const ProfileCard({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ColoredBox(
          color: Color(0xFFFDF8EC),
          child: Row(spacing: 8, children: [Profile(), PersonalInformation()]),
        ),
        Align(
          alignment: .topStart,
          child: Container(
            color: const Color(0xFF022E64).withValues(alpha: .6),
            height: 4,
          ),
        ),
      ],
    );
  }
}
