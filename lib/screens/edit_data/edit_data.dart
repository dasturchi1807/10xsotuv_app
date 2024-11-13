import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/icons.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/edit_data/change_password.dart';

import '../../core/colors.dart';
import '../../core/wButton.dart';

class EditData extends StatelessWidget {
  const EditData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text("Ma'lumotlarni tahrirlash", style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w600,
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
      ),
      body: Padding(
        padding: EdgeInsets.only(left: wi(12), right: wi(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: he(18),),
            const Text("Ism va familiya", style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: AppFonts.montserrat5,
            ),),
            SizedBox(height: he(10),),
            Container(
              height: he(55),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.greyColor.withOpacity(0.3), width: 1)
              ),
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
                    contentPadding: EdgeInsets.only(left: wi(12), top: he(5)),
                    hintText: "Eshonov Fakhriyor",
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.montserrat5
                    )
                ),
              ),
            ),
            SizedBox(height: he(18),),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePassword(),));
        },
        child: Container(
          height: he(55),
          decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
          ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.key),
                SizedBox(width: wi(13)),
                const Text("Parolni o'zgartirish", style: TextStyle(
                  fontSize: 18,
                  color: AppColors.blueColor,
                  fontFamily: AppFonts.montserrat5,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
      ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: he(70),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        child: WButton(
          height: he(50),
          margin: EdgeInsets.only(
              top: he(11), bottom: he(11), left: wi(12), right: wi(12)),
          text: "Saqlash",
          textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: AppFonts.montserrat5,
              fontWeight: FontWeight.w600),
          borderRadius: 15,
          backgroundColor: AppColors.blueColor,
          onTap: () {
            Navigator.pop(context);
          },
        )

      ),
    );
  }
}
