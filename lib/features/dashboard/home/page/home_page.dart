import "package:auto_route/auto_route.dart" show RoutePage;
import "package:bank_app/features/dashboard/components/transactions.dart"
    show Transactions;
import "package:bank_app/features/dashboard/home/components/account_details_card.dart";
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:flutter/widgets.dart";

@RoutePage()
class const HomePage({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: <Widget>[
        const AccountDetailsCard(),
        Container(
          color: const Color(0xFFE1E6F0).withValues(alpha: .32),
          padding: const EdgeInsetsGeometry.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "Recent Transactions",
                style: Constants.kCurrentAppDefaultTextStyle.copyWith(
                  color: const Color(0xFF001530),
                ),
              ),
              Text(
                "See All",
                style: Constants.kCurrentAppDefaultTextStyle.copyWith(
                  color: const Color(0xFF022E64),
                  fontWeight: .w400,
                  letterSpacing: .18,
                ),
              ),
            ],
          ),
        ),
        const Transactions(currentTransactionsIndicator: .allTransactions),
      ],
    );
  }
}
