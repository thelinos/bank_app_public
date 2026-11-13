import "package:auto_route/auto_route.dart" show RoutePage;
import "package:bank_app/features/dashboard/components/transactions.dart"
    show Transactions;
import "package:material_ui/material_ui.dart";

@RoutePage()
class const DebitPage({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Transactions(currentTransactionsIndicator: .debitTransactions);
  }
}
