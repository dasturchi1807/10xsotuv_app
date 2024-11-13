import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/icons.dart';
import 'package:sotuv_app/screens/profile_page/profile_page.dart';

import 'courses_page/courses_page.dart';
import 'main_page/main_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  List pages = const[MainPage(), CoursesPage(), Profile()];
  int index = 0;

  void _onItemTapped(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: pages[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
              fontFamily: AppFonts.montserrat5),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.home, color: index == 0 ? AppColors.blueColor : Colors.grey,),
              label: 'Asosiy',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.courses, color: index == 1 ? AppColors.blueColor : Colors.grey,),
              label: 'Bizning kurslar',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.profile, color: index == 2 ? AppColors.blueColor : Colors.grey,),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
