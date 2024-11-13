import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../core/icons.dart';
import '../../core/sizeConfig.dart';
import '../../core/wButton.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
        child: ListView(
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
                    contentPadding: EdgeInsets.only(left: wi(12), top: he(12)),
                    hintText: "Eshonov Fakhriyor",
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.montserrat5
                    ),
                ),
              ),
            ),
            SizedBox(height: he(18),),
            Divider(color: AppColors.greyColor.withOpacity(0.3), thickness: 1,),
            SizedBox(height: he(18),),
            const Text("Eski parol", style: TextStyle(
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
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.montserrat5
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: wi(16)),
                            hintText: "**********",
                            border: InputBorder.none,
                            isDense: true,
                            hintStyle: const TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppFonts.montserrat5
                            ),
                        ),
                      ),
                  ),
                  SizedBox(width: wi(1),),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.eye)),
                ],
              ),
            ),
            SizedBox(height: he(18),),
            Divider(color: AppColors.greyColor.withOpacity(0.3), thickness: 1,),
            SizedBox(height: he(18),),
            const Text("Yangi parol", style: TextStyle(
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
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.montserrat5
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: wi(16)),
                        hintText: "**********",
                        border: InputBorder.none,
                        isDense: true,
                        hintStyle: const TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.montserrat5
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: wi(1),),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.eye)),
                ],
              ),
            ),
            SizedBox(height: he(18),),
            const Text("Yangi parolni qaytarish", style: TextStyle(
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
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.montserrat5
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: wi(16)),
                        hintText: "**********",
                        border: InputBorder.none,
                        isDense: true,
                        hintStyle: const TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.montserrat5
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: wi(1),),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.eye)),
                ],
              ),
            ),
            SizedBox(height: he(18),),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: he(44),
                      decoration: BoxDecoration(
                        color: Colors.indigo.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                          child: Text(
                            "Bekor qilish",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: AppFonts.montserrat5,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                ),
                SizedBox(width: wi(12)),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: he(44),
                      // margin: EdgeInsets.only(
                      //     top: he(11), bottom: he(11), left: wi(12), right: wi(14)),
                      decoration: BoxDecoration(
                        color: AppColors.blueColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                          child: Text(
                            "Saqlash",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: AppFonts.montserrat5,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                )
              ],
            )
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
