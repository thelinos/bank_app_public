import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:bank_app/shared/core/enums/transaction_direction.dart";
import "package:material_ui/material_ui.dart";

class const TransactionDirectionCard({
  required final TransactionDirection _transactionDirection,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final backgroundColorCode = _transactionDirection.isDebit
        ? 0xFF78C8E1
        : 0xFFE0AD0F;
    final textColorCode = _transactionDirection.isDebit
        ? 0xFF022E64
        : 0xFFE0AD0F;

    return Container(
      decoration: ShapeDecoration(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(6)),
        ),
        color: Color(backgroundColorCode).withValues(alpha: .08),
      ),
      padding: const EdgeInsets.all(9),
      child: Text(
        _transactionDirection.directionRecord.localValue,
        style: Constants.kCurrentAppDefaultTextStyle.copyWith(
          color: Color(textColorCode),
          fontSize: 9,
          letterSpacing: .18,
        ),
      ),
    );
  }
}
