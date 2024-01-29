import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_menu_ui/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Diyar",
                          style: TextStyle(
                            color: kLightFontColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Ready to cook for dinner?",
                          style: TextStyle(
                            color: kDarkGreyFontColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/chef.png",
                            scale: 10,
                          ),
                        ),
                        Positioned(
                          top: -4,
                          right: -4,
                          child: Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                                color: kRedColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1,
                                  color: kLightFontColor,
                                )),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                top: 0,
                right: 32,
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/cooking_banner.jpg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(95, 24, 24, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Menu for dinner",
                          style: TextStyle(
                            fontSize: 18,
                            color: kDarkGreyFontColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          "Chicken baked",
                          style: TextStyle(
                            fontSize: 22,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Icon(
                              Icons.timelapse,
                              color: kPrimaryColor,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "30 min",
                              style: TextStyle(
                                fontSize: 14,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.local_fire_department_rounded,
                              color: kPrimaryColor,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Easy lvl",
                              style: TextStyle(
                                fontSize: 14,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Meal Category",
                    style: TextStyle(
                      fontSize: 22,
                      color: kLightFontColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        color: kDarkGreyFontColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: ListView.builder(
                padding: EdgeInsets.fromLTRB(32, 10, 32, 0),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 16),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Dinner",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBottomColor.withOpacity(0.1),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kDarkGreyFontColor,
        currentIndex: selectedIndex,
        elevation: 0,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          buildBottomNavigationBarItem(
              icon: Icon(Icons.home, size: 26), index: 0),
          buildBottomNavigationBarItem(
              icon: Icon(Icons.search, size: 26), index: 1),
          buildBottomNavigationBarItem(
              icon: Icon(Icons.menu_book, size: 26), index: 2),
          buildBottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings, size: 26), index: 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      {required Icon icon, required int index}) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          icon,
          SizedBox(height: 5),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color:
                  selectedIndex == index ? kPrimaryColor : Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
      label: "home",
    );
  }
}
