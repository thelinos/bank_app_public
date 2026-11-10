typedef TransactionDirectionRecord = ({String remoteValue, String localValue});

enum TransactionDirection {
  credit((remoteValue: "C", localValue: "Credit")),
  debit((remoteValue: "D", localValue: "Debit"));

  new(this.directionRecord);

  final TransactionDirectionRecord directionRecord;
}

extension TransactionDirectionExtension on TransactionDirection {
  bool get isCredit => this == TransactionDirection.credit;
  bool get isDebit => this == TransactionDirection.debit;
}
