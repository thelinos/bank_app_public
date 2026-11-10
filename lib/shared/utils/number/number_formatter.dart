import "package:bank_app/shared/utils/number/enum/currency_format.dart"
    show CurrencyFormat;
import "package:intl/intl.dart" show NumberFormat;

abstract final class NumberFormatter {
  static const _enGH = "en_GH";
  static const _ghs = "GHS ";
  static String formatAmountToString({
    required double amount,
    int? decimalDigits,
    CurrencyFormat format = CurrencyFormat.standard,
  }) {
    if (format.isStandard) {
      final currencyFormatter = NumberFormat.currency(
        locale: _enGH,
        symbol: _ghs,
        decimalDigits: decimalDigits,
      );

      return currencyFormatter.format(amount);
    }

    final compactCurrencyFormatter = NumberFormat.compactCurrency(
      locale: _enGH,
      symbol: _ghs,
      decimalDigits: decimalDigits ?? 5,
    );

    return compactCurrencyFormatter.format(amount);
  }
}
