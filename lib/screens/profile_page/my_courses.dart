import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/images.dart';
import 'package:sotuv_app/screens/about_course/about_course.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../core/icons.dart';
import '../../core/sizeConfig.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text("Mening kurslarim", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontFamily: AppFonts.montserrat5,
        ),),
        leading: Padding(
            padding: EdgeInsets.fromLTRB(wi(14), he(16), wi(6) , he(16)),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: SvgPicture.asset(AppIcons.back, width: wi(6), height: he(15),)),
              ),
            )
        ),
      ),
      body: Padding(padding: EdgeInsets.only(left: wi(12), right: wi(12)),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutCourse(),));
          },
          child: Container(
            height: he(113),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            margin: EdgeInsets.only(top: he(12)),
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(AppImages.anonimCalls2)),
                SizedBox(width: wi(16)),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Anonim \nqo'ng'iroqlar", style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontFamily: AppFonts.montserrat5,
                          ),),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.horizontal_line, width: wi(140),),
                          SizedBox(width: wi(10)),
                          const Text("10/25", style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: AppFonts.montserrat5,
                          ),)
                        ],
                      )
                    ],
                  ),
              ],
            ),
          ),
        );
      },),
      ),
    );
  }
}
