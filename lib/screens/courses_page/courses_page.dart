import 'package:flutter/material.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/images.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/courses_page/widgets/appbar.dart';

import '../about_course/about_course.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: Appbar(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
            mainAxisSpacing: he(12),
            crossAxisSpacing: wi(12),
            mainAxisExtent: he(208)
        ), itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutCourse(),));
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: wi(16), top: he(12), right: wi(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(AppImages.anonimCalls),
                    SizedBox(height: he(12)),
                    const Text("Anonim qo'ng'iroqlar", style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: AppFonts.montserrat5,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: he(8),),
                    const Text("100 000 UZS", style: TextStyle(
                        fontSize: 13,
                        color: AppColors.blueColor,
                        fontFamily: AppFonts.montserrat5,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
            ),
          );
        },),
      )
    );
  }
}
