import "package:bank_app/features/dashboard/transactions/page/transactions_page.dart";
import "package:bank_app/features/routes/app_routes.gr.dart"
    show AllTransactionsPage, CreditPage, DebitPage;
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:bank_app/shared/core/extensions/build_context_x.dart"
    show BuildContextX;
import "package:fast_immutable_collections/fast_immutable_collections.dart";
import "package:flutter/material.dart";

class TransactionRouteInfo({
  required final int index,
  required final String tabLabel,
});

class const TransactionsTabs({
  required final IListOfPageRouteInfo _listOfPageRouteInfo,
  super.key,
}) extends StatelessWidget {
  IList<TransactionRouteInfo> get _transactionTabLabels {
    final iterableOfTabLabels = _listOfPageRouteInfo.map((routePageInfo) {
      return switch (routePageInfo) {
        AllTransactionsPage() => "All",
        DebitPage() => "Debit",
        CreditPage() => "Credit",
        _ => throw UnimplementedError("""
            This error should not have happened because as of this time now, there are only three children of the parent route. 
            If you have added a new page, make sure to add that page route info to this switch expression here. 
          """),
      };
    });

    return iterableOfTabLabels
        .map(
          (transactionTabLabel) => TransactionRouteInfo(
            tabLabel: transactionTabLabel,
            index: iterableOfTabLabels.toIList().indexOf(transactionTabLabel),
          ),
        )
        .toIList();
  }

  @override
  Widget build(BuildContext context) {
    final tabsRouter = context.currentTabsRouter;

    return SizedBox(
      height: 39,
      width: context.screenWidth,
      child: Row(
        mainAxisAlignment: .spaceAround,
        mainAxisSize: .min,
        spacing: 14,
        children: [
          for (final tabRouteInfo in _transactionTabLabels)
            Flexible(
              child: GestureDetector(
                onTap: () {
                  tabsRouter.setActiveIndex(tabRouteInfo.index);
                },
                child: Container(
                  alignment: .center,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: tabsRouter.activeIndex == tabRouteInfo.index
                            ? const Color(0xFF022E64)
                            : Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: Text(
                    tabRouteInfo.tabLabel,
                    style: Constants.kCurrentAppDefaultTextStyle.copyWith(
                      color: const Color(0xFF001530),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
