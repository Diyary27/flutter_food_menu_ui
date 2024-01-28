import 'package:flutter/material.dart';
import 'package:flutter_food_menu_ui/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: kPrimaryColor,
        fontFamily: 'Lato',
      ),
      home: Container(),
    );
  }
}
