// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kit/constants.dart';
import 'package:kit/widgets/card.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uiBgBlack,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "data",
              style: GoogleFonts.poppins(color: white),
            ),
            TwUiCard(
              width: 120,
              height: 122,
              color: white,
              borderColor: uiPurple,
              boxshadowColor: Colors.transparent,
              text: 'solo',
            )
          ],
        ),
      ),
    );
  }
}
