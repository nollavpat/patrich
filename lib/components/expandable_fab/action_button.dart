import 'package:flutter/material.dart';

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.onPressed,
    required this.color,
    required this.icon,
    this.size = 24.0,
  });

  final VoidCallback? onPressed;
  final Color color;
  final Widget icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: color,
      elevation: 4.0,
      child: IconButton(
        icon: icon,
        iconSize: size,
        onPressed: onPressed,
      ),
    );
  }
}
