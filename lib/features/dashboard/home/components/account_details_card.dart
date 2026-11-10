import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:bank_app/shared/core/extensions/build_context_x.dart"
    show BuildContextX;
import "package:bank_app/shared/gen/assets.gen.dart" show Assets;
import "package:flutter/material.dart";

class AccountDetailsCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final kCheckingAccountTextStyles = Constants.kCurrentAppDefaultTextStyle
        .copyWith(fontSize: 10, letterSpacing: 2.5);

    return SizedBox(
      width: context.screenWidth,
      height: 156,
      child: Stack(
        fit: .expand,
        children: <Widget>[
          Container(
            alignment: .centerLeft,
            decoration: BoxDecoration(
              gradient: Constants.kAccountDetailCardGradient,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              spacing: 8,
              children: <Widget>[
                Column(
                  spacing: 2,
                  crossAxisAlignment: .stretch,
                  children: <Widget>[
                    const Text(
                      "Account Balance",
                      style: Constants.kCurrentAppDefaultTextStyle,
                    ),
                    Text(
                      "GHC 10,000.00",
                      style: Constants.kCurrentAppDefaultTextStyle.copyWith(
                        fontWeight: .w700,
                        fontSize: 36,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: <Widget>[
                    Text("Checking Account", style: kCheckingAccountTextStyles),
                    Text(
                      "875431143137098707",
                      style: kCheckingAccountTextStyles,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            // alignment: .topStart,
            child: SizedBox(
              width: context.screenWidth,
              child: Assets.images.accountBalanceContainerFrame.svg(),
            ),
          ),
          Align(
            alignment: .topStart,
            child: Container(
              color: const Color(0xFF022E64).withValues(alpha: .6),
              height: 4 * 2,
            ),
          ),
        ],
      ),
    );
  }
}
