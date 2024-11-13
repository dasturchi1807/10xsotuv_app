import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/fonts.dart';

import '../../../core/icons.dart';


PreferredSizeWidget Appbar() {
  return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.white,
      title: const Text("Asosiy", style: TextStyle(
        fontSize: 18,
        fontFamily: AppFonts.montserrat5,
      ),),
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(27, 23, 0, 23),
        child: SvgPicture.asset(AppIcons.home),
      ));
}
