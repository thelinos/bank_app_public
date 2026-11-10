
typedef TransactionNarrationRecords = ({String remoteValue, String localValue});

enum TransactionNarration{
  deposit((remoteValue: "deposit", localValue: "Deposit")),
  withdrawal((remoteValue: "withdrawal", localValue: "Withdrawal")),
  gift((remoteValue: "gift", localValue: "Gift")),
  inflow((remoteValue: "inflow", localValue: "Inflow"));
  const TransactionNarration(this.transactionNarration);

  final TransactionNarrationRecords transactionNarration;
}

extension TransactionNarrationExtension on TransactionNarration {
  bool get isDeposit => this == TransactionNarration.deposit;
  bool get isWithdrawal => this == TransactionNarration.withdrawal;
  bool get isGift => this == TransactionNarration.gift;
  bool get isInflow => this == TransactionNarration.inflow;
}
