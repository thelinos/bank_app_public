import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:flutter/material.dart" show Color, TextStyle;

abstract class SettingsConstants {
  static const TextStyle _defaultTileTextStyle =
      Constants.kCurrentAppDefaultTextStyle;

  static TextStyle defaultTileTextStyle = _defaultTileTextStyle.copyWith(
    color: const Color(0xFF022E64),
    fontWeight: .w400,
    fontSize: 14,
    letterSpacing: .18,
  );

  static TextStyle defaultDialogBoxTextStyle = _defaultTileTextStyle.copyWith(
    color: const Color(0xFF212121),
    fontSize: 16,
    fontWeight: .w600,
    letterSpacing: .2,
    height: 1.4,
  );
}
