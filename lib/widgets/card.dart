import 'package:flutter/material.dart';

class TwUiCard extends StatelessWidget {
  const TwUiCard(
      {Key? key,
      required this.width,
      required this.height,
      this.borderColor = Colors.white,
      this.color = Colors.white,
      this.boxshadowColor = Colors.white,
      required this.child})
      : super(key: key);
  final double width;
  final double height;
  final Color color;
  final Color borderColor;
  final Color boxshadowColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: borderColor.withOpacity(.4)),
          borderRadius: BorderRadius.circular(25),
    ),
          child: child,
    );
  }
}
