import 'package:flutter/material.dart';

class TwUiDropDown extends StatelessWidget {
  const TwUiDropDown(
      {Key? key,
      required this.width,
      required this.height,
      required this.items,
      this.bgColor = Colors.white,
      this.shadowColor = Colors.transparent,
      this.borderColor = Colors.transparent})
      : super(key: key);
  final double width;
  final double height;
  final Color bgColor;
  final Color shadowColor;
  final Color borderColor;
  final List items;
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
          gradient: LinearGradient(colors: [
            bgColor,
            // const Color.fromARGB(255, 113, 117, 193).withOpacity(.1),
            Colors.white.withOpacity(.4)
          ], begin: Alignment.topCenter, end: Alignment.bottomLeft),
          boxShadow: [
            BoxShadow(
                color: shadowColor,
                spreadRadius: 3,
                blurRadius: 12,
                offset: const Offset(3, 3))
          ]),
      // child: Text(text),
    );
  }
}
