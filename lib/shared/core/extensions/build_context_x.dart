import "dart:async";

import "package:auto_route/auto_route.dart" show AutoTabsRouter, TabsRouter;
import "package:auto_size_text/auto_size_text.dart";
import "package:bank_app/features/settings/common/settings_constants.dart"
    show SettingsConstants;
import "package:gap/gap.dart";
import "package:iconsax/iconsax.dart";
import "package:material_ui/material_ui.dart";

extension BuildContextX on BuildContext {
  double get screenWidth => MediaQuery.widthOf(this);
  double get screenHeight => MediaQuery.heightOf(this);

  TabsRouter get currentTabsRouter => AutoTabsRouter.of(this, watch: true);
  FocusScopeNode get focus => FocusScope.of(this);

  TextScaler get dynamicTextScaler {
    if (screenHeight > 812) {
      return TextScaler.noScaling;
    } else if (screenHeight >= 480) {
      return const TextScaler.linear(0.9);
    } else {
      return const TextScaler.linear(0.8);
    }
  }

  NavigatorState get flutterNavigator => Navigator.of(this);

  FutureOr<void> showGenericDialogBox({
    required String title,
    required String description,
    required List<Widget> buttonsSection,
  }) async {
    await showAdaptiveDialog<void>(
      context: this,
      builder: (context) {
        return AlertDialog.adaptive(
          insetPadding: const .all(16),
          shape: const RoundedRectangleBorder(
            borderRadius: .all(.circular(16)),
          ),
          actions: buttonsSection,
          titlePadding: const .only(top: 24, bottom: 24),
          title: Center(
            child: Text(
              title,
              style: SettingsConstants.defaultDialogBoxTextStyle.copyWith(
                fontWeight: .w800,
                fontSize: 24,
              ),
            ),
          ),
          contentPadding: const .only(left: 32, right: 32, bottom: 32),
          content: Row(
            mainAxisAlignment: .center,
            children: [
              Flexible(
                child: Text(
                  textAlign: .center,
                  description,
                  style: SettingsConstants.defaultDialogBoxTextStyle,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showGenericSnackbar({
    required String text,
    required Color backgroundColor,
    required Color borderColor,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentMaterialBanner()
      ..showSnackBar(
        SnackBar(
          backgroundColor: backgroundColor,
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                text,
                textScaleFactor: 0.85,
                style: const TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.20,
                ),
              ),
            ],
          ),
        ),
      );
  }

  FutureOr<void> showTakeOrSelectPicBottomSheet({
    ShapeBorder? shape,
    Color? backgroundColor,
    double? elevation,
    bool isScrollControlled = false,
    void Function()? onTakingPic,
    void Function()? onSelectingPic,
  }) async {
    if (!mounted) return;
    await showModalBottomSheet<void>(
      context: this,
      enableDrag: false,
      elevation: 0,
      backgroundColor: Colors.white,
      shape: shape,
      showDragHandle: true,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.72),
          constraints: BoxConstraints.tight(
            Size.fromHeight(screenHeight * 0.28),
          ),
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(26.21)),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9.36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Upload Method",
                      textScaler: dynamicTextScaler,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 102, 108, 116),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        flutterNavigator.pop();
                      },
                      child: Text(
                        "Cancel",
                        textScaler: dynamicTextScaler,
                        style: const TextStyle(
                          color: Color(0xFF001530),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(18.72),
              GestureDetector(
                onTap: onTakingPic,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 17,
                    horizontal: 18,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 2,
                        color: Color(0xFFE6B014),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Iconsax.camera,
                        color: Color(0xFFE6B014),
                        size: 20,
                      ),
                      const Gap(8),
                      Text(
                        "Camera",
                        textScaler: dynamicTextScaler,
                        style: const TextStyle(
                          color: Color(0xFFE6B014),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(9.36),
              GestureDetector(
                onTap: onSelectingPic,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 17,
                    horizontal: 18,
                  ),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 2,
                        color: Color(0xFFE6B014),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Iconsax.gallery_import,
                        color: Color(0xFFE6B014),
                        size: 20,
                      ),
                      const Gap(8),
                      Text(
                        "Gallery",
                        textScaler: dynamicTextScaler,
                        style: const TextStyle(
                          color: Color(0xFFE6B014),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
