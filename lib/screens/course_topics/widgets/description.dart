import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../../core/icons.dart';
import '../../../core/sizeConfig.dart';

Widget descriptionBar() {
  return Scaffold(
    backgroundColor: AppColors.bgColor,
    body: Column(
      children: [
        SizedBox(height: he(16)),
        const Text("Videodars yozma variantini yuklab olish", style: TextStyle(
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: AppFonts.montserrat5
        ),),
        SizedBox(height: he(12)),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: wi(5)),
              height: he(52),
              width: wi(280),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.greyColor)
              ),
              child: ListTile(
                leading: SvgPicture.asset(AppIcons.bottom),
                title: const Text("PDF", style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontFamily: AppFonts.montserrat5),),
              ),
            ),
            SizedBox(width: wi(12),),
            Container(
              padding: const EdgeInsets.all(18),
              height: he(52),
              width: wi(52),
              decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: SvgPicture.asset(AppIcons.download),
            )
          ],
        ),
        SizedBox(height: he(18)),
        const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: TextStyle(
                fontSize: 15,
                color: AppColors.noBlack,
                fontWeight: FontWeight.w500,
                fontFamily: AppFonts.montserrat5
            )
        ),
      ],
    ),
    floatingActionButton: Padding(
      padding: EdgeInsets.only(left: wi(238)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(AppIcons.left_arrow),
          ),
          SizedBox(width: wi(18),),
          Container(
            padding: const EdgeInsets.all(15),
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: AppColors.blueColor,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(AppIcons.right_arrow),
          )
        ],
      ),
    ),
  );
}