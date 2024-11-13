import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/images.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../core/icons.dart';
import '../../core/sizeConfig.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text("Biz haqimizda", style: TextStyle(
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
      body: Padding(
          padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(AppImages.owner, fit: BoxFit.fill,),
            ),
            SizedBox(height: he(17),),
            const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged", style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: AppFonts.montserrat5,
            ),),
            SizedBox(height: he(30),),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 0),
              leading: SvgPicture.asset(AppIcons.done),
              title: const Text("Sotuvda 14 yillik tajribaga ega", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AppFonts.montserrat5,
              ),),
            ),
            SizedBox(height: he(18),),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 0),
              leading: SvgPicture.asset(AppIcons.done),
              title: const Text("18 yoshida Hindistonning 1,000 kishilik “Outsorce Call center”ida faoliyatini boshlagan.", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AppFonts.montserrat5,
              ),),
            ),
            SizedBox(height: he(18),),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 0),
              leading: SvgPicture.asset(AppIcons.done),
              title: const Text("Rossiya va Yevropa davlatlariga “sovuq” qo’ng’iroq orqali xizmat va mahsulotlarni sotgan", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AppFonts.montserrat5,
              ),),
            ),
            SizedBox(height: he(18),),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 0),
              leading: SvgPicture.asset(AppIcons.done),
              title: const Text("· Youtube platformasida biznesga tegishli eng ko’p ko’riladigan, “Anonim Qo’ng’iroq” ko’rsatuv muallifi.", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AppFonts.montserrat5,
              ),),
            ),
            SizedBox(height: he(18),),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 0),
              leading: SvgPicture.asset(AppIcons.done),
              title: const Text("Bugungi kunda “Shark” sotuv maktabi asoschisi. Ushbu maktabda 2020-yildan beri 300+ sotuv menejerlarini tayyorlangan.", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: AppFonts.montserrat5,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
