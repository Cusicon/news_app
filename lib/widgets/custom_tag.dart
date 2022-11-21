import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  final Color backgroundColor;
  final List<Widget> children;
  final double borderRadius;

  const CustomTag({
    Key? key,
    required this.backgroundColor,
    required this.children,
    this.borderRadius = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
