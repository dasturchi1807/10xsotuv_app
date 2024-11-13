import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/icons.dart';
import 'package:sotuv_app/core/sizeConfig.dart';

Widget notes() {
  return Scaffold(
    body: ListView(
      physics: const BouncingScrollPhysics(),
      children: List.generate(2, (index) {
        return Container(
          margin: EdgeInsets.only(top: he(12), bottom: he(12)),
          padding: EdgeInsets.only(left: wi(13), right: wi(12)),
          height: he(352),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.indigo.withOpacity(0.2))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: Container(
                  padding: const EdgeInsets.all(12),
                  height: he(35),
                  width: wi(35),
                  decoration: BoxDecoration(
                    color: Colors.indigo.withOpacity(0.2),
                    shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(AppIcons.human)
                ),
                title: const Text("Eshonov Fakhriyor", style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  fontFamily: AppFonts.montserrat5
                ),),
                subtitle: const Text("13.09.2023 1:59", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.montserrat5
                )),
              ),
              const Text("Repellat perspiciatis cum! Doloremque ea viverra eu doloremque tellus aliqua gravida fuga dolorum augue, donec beatae. Class urna et doloremque facilisis autem risus fuga nullam quibusdam, tortor deleniti, accumsan dolorem? Posuere hac? Tellus maiores ullam ullamcorper, nostrud lacinia veniam torquent? Consequuntur a lobortis magnam mollis ac, explicabo nobis, pretium omnis, adipisci placerat, nostrum reiciendis? Illo natoque provident potenti ullamcorper quis hymenaeos lectus nobis nobis dui.", style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.montserrat5
              )),
              SizedBox(height: he(16.72)),
              Padding(
                padding: EdgeInsets.only(top: he(0), left: wi(200),),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.reply),
                    const Text(" Javob berish", style: TextStyle(
                      color: AppColors.blueColor2,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFonts.montserrat5
                    ),)
                  ],
                ),
              )
            ],
          ),
        );
      },),
    ),
    bottomNavigationBar: Container(
      height: he(55),
      width: wi(351),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.greyColor, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: he(55),
            width: wi(280),
            child: TextFormField(
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.montserrat5
              ),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)
                ),
                contentPadding: EdgeInsets.only(left: wi(12)),
                hintText: "Izohingizni yozing",
                hintStyle: const TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.montserrat5
                )
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                color: AppColors.blueColor2,
                shape: BoxShape.circle
            ),
            child: SvgPicture.asset(AppIcons.send),
          )
        ],
      ),
    ),
  );
}