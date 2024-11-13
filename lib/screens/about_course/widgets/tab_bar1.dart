import 'package:flutter/material.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/about_course/widgets/expansion_tile_card.dart';
import 'package:sotuv_app/screens/about_course/widgets/requirements.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

Widget tabBar1(BuildContext context) {
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
              Tab(text: "Kurs mavzulari"),
              Tab(text: "Afzalliklar va talablar"),
            ],
          ),
        ),
        SizedBox(
          height: he(400),
          child: TabBarView(
                  children: [
                    ListView(
                      physics: const ClampingScrollPhysics(),
                      children: [
                        expansionTileCard(context, title: "Birinchi dars kirish qo'ng'iroqlar"),
                        expansionTileCard(context, title: "Ikkinchi dars - Chiqish qo’ng’iroqlar"),
                        expansionTileCard(context, title: "Uchinchi dars - Sovuq qo’ng’iroqlar"),
                        expansionTileCard(context, title: "To’rtinchi dars - Mijozlar “qimmat diyishiga 5 sabbab"),
                      ],
                    ),
                    SingleChildScrollView(child: texts())
                  ],
                ),
        ),
      ],
    ),
  );
}