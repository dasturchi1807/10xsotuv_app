import 'package:flutter/material.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/images.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/core/wButton.dart';
import 'package:sotuv_app/screens/about_course/widgets/bottom_navBar.dart';
import 'package:sotuv_app/screens/about_course/widgets/tab_bar1.dart';

import '../about_course/widgets/appbar.dart';

class AboutCourse extends StatefulWidget {
  const AboutCourse({super.key});

  @override
  State<AboutCourse> createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bgColor,
      appBar: Appbar(context),
      body: Padding(
          padding: EdgeInsets.only(left: wi(14), right: wi(14), top: he(16)),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Image.asset(AppImages.anonimCalls2,
                  height: he(260), width: wi(347), fit: BoxFit.fill),
              SizedBox(height: he(18)),
              const Text(
                "Anonim qo’ng’iroqlar",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: he(4)),
              const Text(
                "100 000 UZS",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.blueColor,
                    fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: he(12)),
              const Text(
                "”Call center”i bor tadbirkorlar uchun maxsus dastur, operator hamda menejerlar uchun o‘quv kursi 4 modul 27ta darsdan iborat bo‘lib, har bir dars menejerlarda sotuvdagi alohida ko‘nikmalarni shakllantiradi va ularning mijoz bilan ishalsh muommila ma'daniyatini yaxshilaydi.",
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.noBlack,
                    fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: he(18)),
              tabBar1(context),
            ],
          )),
      bottomNavigationBar: Container(
        height: he(70),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        child: WButton(
          height: he(50),
          margin: EdgeInsets.only(
              top: he(11), bottom: he(11), left: wi(12), right: wi(14)),
          text: "Sotib olish",
          textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: AppFonts.montserrat5,
                  fontWeight: FontWeight.w600),
          borderRadius: 15,
          backgroundColor: AppColors.blueColor,
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomNavbar();
              },
            );
          },
        )
      ),
    );
  }
}
