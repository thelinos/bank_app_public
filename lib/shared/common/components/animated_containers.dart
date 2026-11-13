
import "package:bank_app/shared/common/components/loading_shape.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:material_ui/material_ui.dart";

class AnimatedContainers extends HookWidget {
  const new({
    required this._controller,
    super.key,
  });
  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final animations = List.generate(2, (index) {
      return useAnimation(
        Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(index / 2, (index + 0.5) / 2, curve: Curves.easeIn),
          ),
        ),
      );
    });

    final shapes = List<Widget>.generate(2, (index) {
      final opacity = animations[index];
      final changeColor =
          index == 0 ? const Color(0xffE6B014) : const Color(0xFF022E64);

      return _loadingContainer(
        context: context,
        opacity: opacity,
        color: changeColor,
      );
    });

    return Row(children: shapes);
  }

  Widget _loadingContainer({
    required BuildContext context,
    required double opacity,
    Color? color,
  }) {
    return ClipPath(
      clipper: LoadingShape(),
      child: Opacity(
        opacity: opacity,
        child: Container(
          constraints: BoxConstraints.tight(
            const Size(50, 80),
          ),
          color: color,
        ),
      ),
    );
  }
}
