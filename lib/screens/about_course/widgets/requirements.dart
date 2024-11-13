import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/icons.dart';
import 'package:sotuv_app/core/sizeConfig.dart';

Widget texts() {
  return Padding(
    padding: EdgeInsets.only(top: he(20)),
    child: Column(
      children: [
        textTitle("Afzalliklar", AppIcons.like),
        textSubtitle(title: "An easy and good start for the starters."),
        textSubtitle(title: "Learn to design and code."),
        textSubtitle(title: "Well explained and comprehensive coverage."),
        textSubtitle(title: "Dedicated sessions will be given on CSS, CSS Advanced, and CSS3."),
        SizedBox(height: he(30)),
        textTitle("Talablar", AppIcons.light),
        SizedBox(height: he(14)),
        const Text(
            """Operator va menejerlar uchun o‘quv kursi (kirish va chiqish qo‘ng‘iroqlari)\n\nMijozlar bilan professional darajada muloqot qilishga yo‘naltirilgan trening.\n\nO‘quv kursining maqsad va vazifalari""",
            style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: AppFonts.montserrat5
        )),
        SizedBox(height: he(14)),
        textSubtitle2(title: "Operator lavozimida ishlovchi xodimlarning majburiyatlari.", image: AppIcons.circle, number: '1'),
        textSubtitle2(title: "Tashkilot haqida maʼlumot berish", image: AppIcons.circle, number: '2'),
        textSubtitle2(title: "Mahsulot haqida maʼlumot berish.", image: AppIcons.circle, number: '3'),
        textSubtitle2(title: "Mijozlar bilan ishlash.", image: AppIcons.circle, number: '4'),
      ],
    ),
  );
}

Widget textTitle(String? title, String image) {
  return Row(
    children: [
      SvgPicture.asset(image, height: he(20)),
      SizedBox(width: wi(10),),
      Text(title!, style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontFamily: AppFonts.montserrat5
      ),)
    ],
  );
}

Widget textSubtitle({String? title}) {
  return Padding(
    padding: EdgeInsets.only(top: he(10)),
    child: ListTile(
      contentPadding: const EdgeInsets.only(left: 0),
      leading: SvgPicture.asset(AppIcons.done),
      title: Text(title!, style: const TextStyle(
          fontSize: 15,
          color: AppColors.noBlack,
          fontWeight: FontWeight.w400,
          fontFamily: AppFonts.montserrat5
      )),
    )
  );
}

Widget textSubtitle2({String? title, String? image, String? number}) {
  return ListTile(
    contentPadding: const EdgeInsets.only(left: 0),
    leading: Stack(
      children: [
        SvgPicture.asset(image!),
        Positioned(
          left: wi(7),
            top: he(2),
            child: Text(number!, style: const TextStyle(
              fontSize: 14,
              fontFamily: AppFonts.montserrat5
            ),)),
      ],
    ),
    title: Text(title!, style: const TextStyle(
        fontSize: 15,
        color: AppColors.noBlack,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.montserrat5
    )),
  );
}