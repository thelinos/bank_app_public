import "package:auto_route/auto_route.dart"
    show AutoTabsRouter, PageRouteInfo, RoutePage;
import "package:bank_app/features/dashboard/transactions/components/transactions_tabs.dart"
    show TransactionsTabs;
import "package:bank_app/features/routes/app_routes.gr.dart"
    show AllTransactionsPage, CreditPage, DebitPage;
import "package:bank_app/shared/common/constants.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart"
    show IList;
import "package:flutter/material.dart"
    show
        Align,
        BouncingScrollPhysics,
        BuildContext,
        Color,
        Column,
        Container,
        EdgeInsets,
        Flexible,
        Padding,
        Stack,
        StatelessWidget,
        Text,
        Widget;
import "package:flutter/rendering.dart";

typedef IListOfPageRouteInfo = IList<PageRouteInfo<Object?>>;

@RoutePage()
class const TransactionsPage({super.key}) extends StatelessWidget {
  IListOfPageRouteInfo get _routes =>
      IList(const [AllTransactionsPage(), DebitPage(), CreditPage()]);
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: _routes.unlockLazy,
      physics: const BouncingScrollPhysics(),
      builder: (context, child, controller) {
        return Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1E6F0).withValues(alpha: .32),
                    border: const Border(
                      bottom: BorderSide(color: Color(0xFFE1E6F0), width: 1.5),
                    ),
                  ),
                  alignment: .centerLeft,
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Text(
                          "Transactions",
                          style: Constants.kCurrentAppDefaultTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: .w600,
                            color: const Color(0xFF001530),
                            height: 1.2,
                          ),
                        ),
                      ),

                      TransactionsTabs(listOfPageRouteInfo: _routes),
                    ],
                  ),
                ),
                Align(
                  alignment: .topStart,
                  child: Container(
                    color: const Color(0xFF022E64).withValues(alpha: .6),
                    height: 4,
                  ),
                ),
              ],
            ),
            Flexible(child: child),
          ],
        );
      },
    );
  }
}
