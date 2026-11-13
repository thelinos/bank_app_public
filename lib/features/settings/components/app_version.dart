import "package:bank_app/features/settings/common/settings_constants.dart"
    show SettingsConstants;
import "package:bank_app/shared/core/extensions/build_context_x.dart"
    show BuildContextX;
import "package:material_ui/material_ui.dart"
    show
        Border,
        BorderSide,
        BoxDecoration,
        BuildContext,
        ButtonStyle,
        Color,
        Container,
        FilledButton,
        GestureDetector,
        RoundedRectangleBorder,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        Widget;

class const AppVersion({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!context.mounted) return;
        await context.showGenericDialogBox(
          title: "App Version",
          description: "Version 1.0.0",
          buttonsSection: [
            SizedBox(
              width: .infinity,
              child: FilledButton(
                onPressed: context.flutterNavigator.pop,
                style: ButtonStyle(
                  fixedSize: .all(const Size.fromHeight(56)),
                  backgroundColor: .all(const Color(0xFFE6B014)),
                  shape: .all(
                    const RoundedRectangleBorder(
                      borderRadius: .all(.circular(8)),
                    ),
                  ),
                ),
                child: Text(
                  "Okay",
                  style: SettingsConstants.defaultDialogBoxTextStyle,
                ),
              ),
            ),
          ],
        );
      },
      child: Container(
        alignment: .center,
        padding: const .symmetric(vertical: 12),
        margin: const .only(bottom: 12),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFE1E6F0),
              // strokeAlign: BorderSide.strokeAlignOutside,
              width: 1.5,
            ),
          ),
        ),
        child: Text(
          "App Version",
          style: SettingsConstants.defaultTileTextStyle.copyWith(
            fontWeight: .w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
