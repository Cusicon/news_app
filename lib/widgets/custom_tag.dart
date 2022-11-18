import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  final Color backgroundColor;
  final List<Widget> children;

  const CustomTag({
    Key? key,
    required this.backgroundColor,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
