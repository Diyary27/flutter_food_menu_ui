import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_menu_ui/constants.dart';
import 'package:flutter_food_menu_ui/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedBottomNavigatorIndex = 0;
  int selectedCategoryIndex = 0;
  List categories = ["Dinner", "Snack", "Breakfast", "Super", "Lunch", "Blah"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Welcome profile
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
              // Banner
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
              // Categories
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
                  padding: EdgeInsets.fromLTRB(32, 10, 16, 0),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: Container(
                        width: 100,
                        margin: EdgeInsets.only(right: 16),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: selectedCategoryIndex == index
                              ? kAccentColor
                              : kDarkGreyColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: selectedCategoryIndex == index
                                ? kDarkColor
                                : kDarkGreyFontColor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 400,
                child: GridView.builder(
                    padding: EdgeInsets.fromLTRB(0, 36, 0, 0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                    ),
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      index: index,
                                      image: "assets/images/spaghetti.png",
                                      name: "spaghetti",
                                      time: "60 Min",
                                      level: "Hard lvl",
                                    ))),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 170,
                              height: 200,
                              padding: EdgeInsets.only(bottom: 24),
                              decoration: BoxDecoration(
                                color: kLightGreyColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Spaghetti",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: kLightFontColor,
                                    ),
                                  ),
                                  SizedBox(height: 11),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                          5,
                                          (index) => Icon(
                                                Icons.star,
                                                color: kPrimaryColor,
                                              ))),
                                  SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "60 \n Min",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kLightFontColor,
                                        ),
                                      ),
                                      Column(
                                        children: List.generate(
                                          6,
                                          (index) => Container(
                                            width: 2,
                                            height: 2,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                              color: kDarkGreyFontColor,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Hard \n lvl",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: kLightFontColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -28,
                              child: Hero(
                                tag: "tagImage${index}",
                                child: Image.asset(
                                  "assets/images/spaghetti.png",
                                  width: 135,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBottomColor.withOpacity(0.1),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kDarkGreyFontColor,
        currentIndex: selectedBottomNavigatorIndex,
        elevation: 0,
        onTap: (index) {
          setState(() {
            selectedBottomNavigatorIndex = index;
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
              color: selectedBottomNavigatorIndex == index
                  ? kPrimaryColor
                  : Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
      label: "home",
    );
  }
}
