import 'package:flutter/material.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/course_topics/widgets/description.dart';
import 'package:sotuv_app/screens/course_topics/widgets/notes.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

Widget tabBar2(BuildContext context) {
  return DefaultTabController(
    length: 2,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.indigo.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: TabBar(
            labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: AppFonts.montserrat5
            ),
            indicatorWeight: 1.0,
            dividerHeight: 0,
            padding: const EdgeInsets.all(4.0),
            indicator: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: BorderRadius.circular(30.0),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: "Tavsif"),
              Tab(text: "Izohlar"),
            ],
          ),
        ),
        SizedBox(
          height: he(400),
          child: TabBarView(
            physics: BouncingScrollPhysics(),
              children: [
                descriptionBar(),
                notes()
              ],
            ),
        ),
      ],
    ),
  );
}