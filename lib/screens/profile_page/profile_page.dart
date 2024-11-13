import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/icons.dart';
import 'package:sotuv_app/core/images.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/edit_data/edit_data.dart';
import 'package:sotuv_app/screens/profile_page/about_us.dart';
import 'package:sotuv_app/screens/profile_page/my_courses.dart';
import 'package:sotuv_app/screens/profile_page/questions.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            width: double.maxFinite,
            height: he(312),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EditData(),));
                  },
                  child: Container(
                    height: he(32),
                    width: wi(32),
                    margin: EdgeInsets.only(top: he(45), left: wi(325)),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.bgColor,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: SvgPicture.asset(AppIcons.edit),
                  ),
                ),
                Container(
                  height: he(80),
                  width: wi(80),
                  padding: const EdgeInsets.all(18),
                  decoration: const BoxDecoration(
                      color: AppColors.bgColor,
                      shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(AppIcons.human, color: Colors.indigo.shade500),
                ),
                SizedBox(height: he(12)),
                const Text("Eshonov Fakhriyor", style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: he(23)),
                Container(
                  height: he(85),
                  margin: EdgeInsets.only(left: wi(12), right: wi(12)),
                  padding: EdgeInsets.only(left: wi(15)),
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                     const GradientCircularProgressIndicator(
                          progress: 0.87,
                          gradient: LinearGradient(colors: [Color(0xFF4FF9F9), Color(0xFF375BB9)]),
                        child: Center(child: Text("87%", style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: AppFonts.montserrat5,
                            fontWeight: FontWeight.w800
                        ),)),
                        size: 65,
                        stroke: 8,
                      ),
                      SizedBox(width: wi(10),),
                     const Expanded(
                          child: Text("Sizning harakatlaringiz a’lo darajada", style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: AppFonts.montserrat5,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                      Image.asset(AppImages.racket, height: he(74), width: wi(72),)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: he(12)),
          Container(
            height: he(55),
            margin: EdgeInsets.only(left: wi(12), right: wi(12)),
            // padding: EdgeInsets.only(left: wi(15)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCourses(),));
              },
              child: ListTile(
                  contentPadding: EdgeInsets.only(left: wi(20), right: wi(20)),
                  leading: SvgPicture.asset(AppIcons.play, height: he(15), width: wi(10), color: AppColors.greyColor,),
                  title: const Text("Mening kurslarim",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: AppFonts.montserrat5,
                    ),),
                  trailing: SvgPicture.asset(AppIcons.right, height: he(15), width: wi(10),),
                ),
              ),
            ),
          SizedBox(height: he(12)),
          Container(
            height: he(55),
            margin: EdgeInsets.only(left: wi(12), right: wi(12)),
            // padding: EdgeInsets.only(left: wi(15)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUs(),));
              },
              child: ListTile(
                contentPadding: EdgeInsets.only(left: wi(20), right: wi(20)),
                leading: SvgPicture.asset(AppIcons.info, height: he(15), width: wi(10), color: AppColors.greyColor,),
                title: const Text("Biz haqimizda",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.montserrat5,
                  ),),
                trailing: SvgPicture.asset(AppIcons.right, height: he(15), width: wi(10),),
              ),
            ),
          ),
          SizedBox(height: he(12)),
          Container(
            height: he(55),
            margin: EdgeInsets.only(left: wi(12), right: wi(12)),
            // padding: EdgeInsets.only(left: wi(15)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Questions(),));
              },
              child: ListTile(
                contentPadding: EdgeInsets.only(left: wi(20), right: wi(20)),
                leading: SvgPicture.asset(AppIcons.question, height: he(15), width: wi(10), color: AppColors.greyColor,),
                title: const Text("Eng ko'p beriladigan savollar",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.montserrat5,
                  ),),
                trailing: SvgPicture.asset(AppIcons.right, height: he(15), width: wi(10),),
              ),
            ),
          ),
          SizedBox(height: he(12)),
          Container(
            height: he(55),
            margin: EdgeInsets.only(left: wi(12), right: wi(12)),
            // padding: EdgeInsets.only(left: wi(15)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: () {
              },
              child: ListTile(
                contentPadding: EdgeInsets.only(left: wi(20), right: wi(20)),
                leading: SvgPicture.asset(AppIcons.star, height: he(15), width: wi(10), color: AppColors.greyColor,),
                title: const Text("Dasturni baholash",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.montserrat5,
                  ),),
                trailing: SvgPicture.asset(AppIcons.right, height: he(15), width: wi(10),),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: he(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
              onPressed: () {},
                  style: TextButton.styleFrom(
                    fixedSize: Size.fromWidth(wi(190))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.exit),
                      const SizedBox(width: 10),
                      const Text("Tizimdan chiqish", style: TextStyle(
                fontSize: 15,
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontFamily: AppFonts.montserrat5
              ),),
                    ],)),
              const Text("Dastur versiyasi 1686.546", style: TextStyle(
                  fontSize: 13,
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.montserrat5
              ),),
              SizedBox(height: he(20),)
            ],
          ),
          )
        ],
      ),
    );
  }
}
