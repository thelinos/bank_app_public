import "dart:async" show unawaited;

import "package:auto_route/auto_route.dart" show AutoRouterX;
import "package:bank_app/features/routes/app_routes.gr.dart" show SettingsPage;
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter/material.dart";

class const DashboardAppBar()
    extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff022E64),
      elevation: 0,
      leading: Column(
        mainAxisSize: .min,
        mainAxisAlignment: .center,
        children: [
          GestureDetector(
            onTap: () {
              unawaited(context.pushRoute(const SettingsPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 9),
              child: Image.asset("assets/images/Union.png"),
            ),
          ),
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 14, top: 16, bottom: 16),
          child: Image.asset("assets/images/app_icon.png"),
        ),
      ],
      title: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.80,
              child: Text(
                "Good morning",
                textScaler: context.dynamicTextScaler,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "Mr. John Jimoh",
              textScaler: context.dynamicTextScaler,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
