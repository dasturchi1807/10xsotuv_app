import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';

import '../../../../core/icons.dart';
import '../../../../core/sizeConfig.dart';


PreferredSizeWidget Appbar(BuildContext context) {
  return AppBar(
     toolbarHeight: 70,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text("Kurs haqida", style: TextStyle(
        fontSize: 21,
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
  );
}
