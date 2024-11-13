import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';

import '../../../../core/icons.dart';
import '../../../../core/sizeConfig.dart';

PreferredSizeWidget Appbar(BuildContext context) {
  return AppBar(
      toolbarHeight: he(70),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        "Kurs mavzulari",
        style: TextStyle(
          fontSize: 21,
          fontFamily: AppFonts.montserrat5,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: he(20),
          width: wi(20),
          margin: EdgeInsets.only(left: wi(12), top: wi(12)),
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: SvgPicture.asset(
            AppIcons.back,
            height: he(14),
            width: wi(10),
          )),
        ),
      ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: he(50),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.only(left: wi(20), right: wi(20)),
          leading: SvgPicture.asset(AppIcons.play, height: he(15), width: wi(10),),
          title: const Text("Kirish",
            style: TextStyle(
              fontSize: 16,
              fontFamily: AppFonts.montserrat5,
            ),),
          trailing: SvgPicture.asset(AppIcons.bottom, height: he(6), width: wi(10),),
        ),
      ),
    ),),
  );
}
