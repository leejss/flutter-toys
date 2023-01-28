import 'package:flutter/material.dart';
import "package:hello/screens/home.screen.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
