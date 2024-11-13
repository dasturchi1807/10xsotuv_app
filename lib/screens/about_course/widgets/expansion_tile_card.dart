import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/course_topics/course_topics.dart';

import '../../../core/icons.dart';

Widget expansionTileCard(BuildContext context, {String? title}) {
  return Padding(
    padding: EdgeInsets.only(top: he(12)),
    child: ExpansionTileCard(
      expandedColor: AppColors.bgColor,
      elevation: 0,
        leading: SvgPicture.asset(AppIcons.camera),
        title: Text(title!, style: const TextStyle(
          fontSize: 14,
          fontFamily: AppFonts.montserrat5,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),),
        subtitle: const Text("6-dars", style: TextStyle(
            fontSize: 12,
            fontFamily: AppFonts.montserrat5,
            fontWeight: FontWeight.w500,
            color: AppColors.greyColor
        ),),
        borderRadius: BorderRadius.circular(15),
        children: [
          Padding(
            padding: EdgeInsets.only(left: wi(12), right: wi(12)),
            child: Column(
              children: List.generate(6, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CourseTopics(),));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: he(15)),
                    // height: he(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: SvgPicture.asset(AppIcons.play, height: he(15),),
                      title: Text("${index+1}-dars: Kirish"),
                    ),
                  ),
                );
              },)
            )
          )
        ]),
  );
}