import "package:dday_pap/screens/home_screen.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
          fontFamily: "Lato",
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  color: Colors.black,
                  fontSize: 80.0,
                  fontWeight: FontWeight.w700),
              displayMedium: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 50.0),
              bodyMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500))),
      home: HomeScreen()));
}
