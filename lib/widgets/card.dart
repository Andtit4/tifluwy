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
         /*  gradient: LinearGradient(colors: [
            color,
            // const Color.fromARGB(255, 113, 117, 193).withOpacity(.1),
            Colors.white.withOpacity(.4)
          ], begin: Alignment.topCenter, end: Alignment.bottomLeft), */
          /* boxShadow: [
            BoxShadow(
                color: boxshadowColor,
                spreadRadius: 3,
                blurRadius: 12,
                offset: const Offset(3, 3))
          ] */),
          child: child,
      // child: Text(text),
    );
  }
}
