import "package:auto_route/auto_route.dart" show RoutePage;
import "package:bank_app/features/dashboard/components/transactions.dart";
import "package:flutter/material.dart";

@RoutePage()
class const CreditPage({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Transactions(
      currentTransactionsIndicator: .creditTransactions,
    );
  }
}
