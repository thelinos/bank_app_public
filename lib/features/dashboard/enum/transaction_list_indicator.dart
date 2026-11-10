enum TransactionListIndicator {
  allTransactions("all transactions"),
  creditTransactions("Credit"),
  debitTransactions("Debit");

  new(this.transactionsIndicator);

  final String transactionsIndicator;

  bool get isAllTransactions => this == allTransactions;
}
