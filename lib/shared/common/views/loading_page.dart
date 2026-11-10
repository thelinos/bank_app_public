import "package:auto_route/auto_route.dart";
import "package:bank_app/shared/common/components/animated_containers.dart";
import "package:bank_app/shared/common/components/loading_shape.dart";
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:gap/gap.dart";

@RoutePage()
class LoadingPage extends HookWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1600),
    );
    useEffect(() {
      controller.repeat();
      return null;
    });
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipPath(
                    clipper: LoadingShape(),
                    child: Container(
                      constraints: BoxConstraints.tight(
                        const Size(50, 80),
                      ),
                      color: const Color(0xFF022E64),
                    ),
                  ),
                  AnimatedContainers(controller: controller),
                ],
              ),
              const Gap(32),
              Text(
                "Please wait...",
                textScaler: context.dynamicTextScaler,
                style: const TextStyle(
                  color: Color(0xFF022E64),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 0,
                  letterSpacing: 0.18,
                ),
              ),
              const Gap(8),
              Text(
                "We are setting up your account",
                textScaler: context.dynamicTextScaler,
                style: const TextStyle(
                  color: Color(0xFF022E64),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
