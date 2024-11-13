import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/sizeConfig.dart';

import '../../../core/icons.dart';


PreferredSizeWidget Appbar() {
  return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.white,
      title: const Text("Bizning kurslar", style: TextStyle(
        fontSize: 18,
        fontFamily: AppFonts.montserrat5,
      ),),
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(27, 20, 0, 20),
        child: SvgPicture.asset(AppIcons.courses, color: AppColors.blueColor),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(right: wi(12)),
            height: he(30),
            width: wi(30),
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(wi(6.66), he(5), wi(5.75), he(4.54)),
              child: SvgPicture.asset(AppIcons.pin),
            ),
          ),
        )
      ],
  );
}
