import "package:bank_app/features/dashboard/components/bank_bottom_navigation_bar.dart"
    show RouteInfo;
import "package:bank_app/shared/gen/assets.gen.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart";
import "package:flutter/material.dart";

class const BankBottomNavigationBarTile({
  required final int _activeTabIndex,
  required final void Function(int) _onTabSelected,
  required final IList<RouteInfo> _routesInfo,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          for (final route in _routesInfo)
            Flexible(
              child: GestureDetector(
                onTap: () {
                  _onTabSelected(route.index);
                },
                child: Container(
                  width: double.infinity,
                  color: route.index == _activeTabIndex
                      ? const Color(0xFF022E64)
                      : Colors.white,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      (route.routeName == "Home"
                              ? Assets.images.homeHomeIcon
                              : Assets.images.homeTransactionIcon)
                          .svg(
                            colorFilter: ColorFilter.mode(
                              route.index == _activeTabIndex
                                  ? const Color(0xFFE6B014)
                                  : const Color(0xFF022E64),
                              BlendMode.srcIn,
                            ),
                          ),
                      Text(
                        route.routeName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: route.index == _activeTabIndex
                              ? const Color(0xFFE6B014)
                              : const Color(0xFF022E64),
                          fontWeight: .w700,
                          fontSize: 11,
                          height: 1.16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
