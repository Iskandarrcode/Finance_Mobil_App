import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:work5/home_page/home_page1.dart';

import '../add_card/card1.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int indexses = 0;

  final pages =  [
    HomePage(),
    AddCardPage(),
    Placeholder(),
  ];

  changePage(int index) => setState(() => indexses = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: pages[indexses]),

          /// My Custom Bottom Navigation
          Container(
            width: double.infinity,
            height: 87.h,
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 8.h,
                  offset: const Offset(1, 0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => changePage(0),
                  child: Image.asset(
                    'assets/icons/home${indexses == 0 ? "": "_black"}.png',
                    height: 26,
                    width: 26,
                  ),
                ),
                GestureDetector(
                  onTap: () => changePage(1),
                  child: Image.asset(
                    'assets/icons/refund${indexses == 1 ? "": "_black"}.png',
                    height: 26,
                    width: 26,
                  ),
                ),
                GestureDetector(
                  onTap: () => changePage(2),
                  child: Image.asset(
                    'assets/icons/bar${indexses == 2 ? "": "_black"}.png',
                    height: 26,
                    width: 26,
                  ),
                ),
                Image.asset(
                    'assets/icons/settings_black.png',
                  height: 26,
                  width: 26,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}