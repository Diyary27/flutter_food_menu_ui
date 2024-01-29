import 'package:flutter/material.dart';
import 'package:flutter_food_menu_ui/constants.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({
    super.key,
    required this.index,
    required this.image,
    required this.name,
    required this.time,
    required this.level,
  });

  final int index;
  final String image, name, time, level;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12, 8, 4, 8),
                        decoration: BoxDecoration(
                          color: kDarkGreyColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: kDarkGreyFontColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: kDarkGreyColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: kRedColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Hero(
                tag: "tagImage${widget.index}",
                child: Image.asset(
                  widget.image,
                  height: 250,
                  width: 250,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 28),
                decoration: BoxDecoration(
                  color: kLightGreyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      width: 28,
                      decoration: BoxDecoration(
                        color: kDarkGreyFontColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: kLightFontColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.timelapse_rounded,
                              color: kPrimaryColor,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "60 Minutes",
                              style: TextStyle(
                                color: kLightGreyFontColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Cooking",
                              style: TextStyle(
                                color: kDarkGreyFontColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
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
                        Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: kPrimaryColor,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "4.8 Stars",
                              style: TextStyle(
                                color: kLightGreyFontColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Rating",
                              style: TextStyle(
                                color: kDarkGreyFontColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
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
                        Column(
                          children: [
                            Icon(
                              Icons.local_fire_department_rounded,
                              color: kPrimaryColor,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Easy Level",
                              style: TextStyle(
                                color: kLightGreyFontColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Recipes",
                              style: TextStyle(
                                color: kDarkGreyFontColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      padding: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: kDarkColor,
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          2,
                          (index) {
                            List tabs = ["instructions", "Ingredients"];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                height: 48,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? kLightGreyColor
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                child: Center(
                                  child: Text(
                                    tabs[index],
                                    style: TextStyle(
                                      color: selectedIndex == index
                                          ? kPrimaryColor
                                          : kDarkGreyFontColor,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    //
                    SizedBox(height: 24),
                    selectedIndex == 0
                        ? Container(
                            height: 150,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: kDarkColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              style: TextStyle(
                                fontSize: 15,
                                color: kDarkGreyFontColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : Container(
                            height: 150,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 150,
                                  width: 85,
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                    color: kDarkColor,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/Tomato.png",
                                        width: 60,
                                        height: 60,
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "Tomato",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: kLightGreyFontColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_up,
                          size: 28,
                          color: kDarkGreyFontColor,
                        ),
                        Text(
                          "Show more",
                          style: TextStyle(
                            fontSize: 14,
                            color: kDarkGreyFontColor,
                            fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
