import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_food_menu_ui/constants.dart';
import 'package:flutter_food_menu_ui/onBoard.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColorDark: kPrimaryColor,
        primaryColorLight: kPrimaryColor,
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: OnBoardScreen(),
    );
  }
}
