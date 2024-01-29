import 'package:flutter/material.dart';
import 'package:flutter_food_menu_ui/constants.dart';
import 'package:flutter_food_menu_ui/home_screen.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                top: screenSize.height * 0.06,
                right: 0,
                child: Container(
                  height: 280,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/images/chef.png",
                  scale: 1.5,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 32, right: 32, bottom: 32),
            padding: EdgeInsets.all(38),
            width: screenSize.width,
            height: 330,
            decoration: BoxDecoration(
              color: kDarkColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Simplify your cooking plan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kLightFontColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "No more confused about your meal menu",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkGreyFontColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    "Let's Go",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
                      padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                      minimumSize:
                          MaterialStatePropertyAll(Size(screenSize.width, 10))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
