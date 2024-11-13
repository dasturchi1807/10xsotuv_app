import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/wButton.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../../core/icons.dart';
import '../../../core/sizeConfig.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  int _selectedValue = 0;

  void changeValue(int? value) {
    print("ksjdfkdsfnfjd: $value");
    setState(() {
      _selectedValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: he(420),
        padding: EdgeInsets.only(left: wi(12)),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: he(5),
              margin: EdgeInsets.only(
                  top: he(12), left: wi(150), right: wi(160)),
              decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(50)),
            ),
            SizedBox(
              height: he(15),
            ),
            const Text(
              "Kursni sotib olish",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: AppFonts.montserrat5,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: he(8),
            ),
            const Expanded(
              child: Text(
                "Kursni davomini ko’rish uchun, sotib oling!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Text(
              "To’lov tizimini tanlang",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: AppFonts.montserrat5,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: he(18),
            ),
            Row(
              children: List.generate(
                3,
                    (index) {
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        changeValue(index);
                      },
                      child: Column(
                        children: [
                          Container(
                            height: he(70),
                            margin: EdgeInsets.only(right: wi(12)),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: AppColors.greyColor,
                                  width: 1),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                  AppIcons.payyers[index]),
                            ),
                          ),
                          Radio<int>(
                              value: index,
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  changeValue(value);
                                });
                              },),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(
              color: AppColors.greyColor.withOpacity(0.5),
              endIndent: wi(12),
            ),
            SizedBox(height: he(10)),
            ListTile(
              contentPadding:
              EdgeInsets.only(left: 0, right: wi(12)),
              leading: const Text(
                "Kursning umumiy narxi",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w800),
              ),
              trailing: const Column(
                children: [
                  Text(
                    "100 000 UZS",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: AppColors.greyColor,
                        fontSize: 14,
                        fontFamily: AppFonts.montserrat5,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "100 000 UZS",
                    style: TextStyle(
                        color: AppColors.greenColor,
                        fontSize: 18,
                        fontFamily: AppFonts.montserrat5,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            SizedBox(height: he(18)),
            WButton(
              height: he(50),
              margin: EdgeInsets.only(bottom: he(12), right: wi(12)),
              text: "To'lov qilish",
              textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: AppFonts.montserrat5,
                  fontWeight: FontWeight.w600),
              borderRadius: 15,
              backgroundColor: AppColors.blueColor,
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: he(258),
                        width: wi(330),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: SvgPicture.asset(AppIcons.x)),
                            Center(
                                child: SvgPicture.asset(
                                    AppIcons.succes)),
                            SizedBox(height: he(10),),
                            Center(
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  text: const TextSpan(children: [
                                    TextSpan(
                                      text: "Kursni ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily:
                                          AppFonts.montserrat5,
                                          fontWeight:
                                          FontWeight.w800),
                                    ),
                                    TextSpan(
                                      text: "muvaffaqiyatli",
                                      style: TextStyle(
                                          color:
                                          AppColors.blueColor,
                                          fontSize: 18,
                                          fontFamily:
                                          AppFonts.montserrat5,
                                          fontWeight:
                                          FontWeight.w800),
                                    ),
                                    TextSpan(
                                      text: "\nsotib oldingiz",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily:
                                          AppFonts.montserrat5,
                                          fontWeight:
                                          FontWeight.w800),
                                    )
                                  ])),
                            ),
                            SizedBox(height: he(10),),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: he(50),
                                decoration: BoxDecoration(
                                  color: AppColors.blueColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Center(
                                    child: Text(
                                      "Tizimga kirish",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: AppFonts.montserrat5,
                                          fontWeight: FontWeight.w800),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            )

          ],
        ));
  }
}
