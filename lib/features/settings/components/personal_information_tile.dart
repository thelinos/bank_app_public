import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:flutter/material.dart";

class const PersonalInformationTile({
  required final String _label,
  required final String _information,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultWidgetTextStyle = Constants.kCurrentAppDefaultTextStyle
        .copyWith(color: const Color(0xFF022E64));

    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(_label, style: defaultWidgetTextStyle.copyWith(fontSize: 10)),
        Text(
          _information,
          style: defaultWidgetTextStyle.copyWith(
            fontSize: 14,
            fontWeight: .w400,
          ),
        ),
      ],
    );
  }
}
