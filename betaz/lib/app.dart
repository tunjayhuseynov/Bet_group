library betaz;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

part 'mainMenu/index.dart';
part 'mainMenu/state.dart';
part 'couponPage/index.dart';
part 'couponPage/state.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new MainMenu(title: "BetAz",),
      title: new Text('BetAz',
      style: GoogleFonts.robotoSlab(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold)),
      gradientBackground: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.1, 0.9],
          colors: [
            Color(0xFFB993D6),
            Color(0xFF8CA6DB)
          ],
      ),
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Colors.white
    )
    );
  }
}