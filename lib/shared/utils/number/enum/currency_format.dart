enum CurrencyFormat {
  compact,
  standard;

  bool get isCompact => this == compact;
  bool get isStandard => this == standard;
}
