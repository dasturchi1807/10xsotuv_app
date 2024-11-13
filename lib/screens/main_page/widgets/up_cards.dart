import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/courses_page/courses_page.dart';

import '../../../core/images.dart';

class UpCards extends StatelessWidget {
  const UpCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const CoursesPage(),));
      },
      child: CarouselSlider(
          items: List.generate(5, (index) {
            return Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFE9EEF7),
                    borderRadius: BorderRadius.circular(30)
                ),
                margin: EdgeInsets.only(right: wi(11)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // TEXTS
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: wi(21), top: he(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(text: const TextSpan(children: [
                                TextSpan(
                                    text: "Sotuvni ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      fontFamily: AppFonts.montserrat5,
                                      fontWeight: FontWeight.w600
                                    )
                                ),
                                TextSpan(
                                    text: "o'rganing!",
                                    style: TextStyle(
                                        color: Color(0xFF375BB9),
                                        fontSize: 16,
                                        fontFamily: AppFonts.montserrat5,
                                        fontWeight: FontWeight.w600
                                    )
                                )
                              ])),
                              SizedBox(height: he(8)),
                              const Text("Har qanday mahsulot yoki xizmatni 10x sotish uchun onlayn kurs.",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: AppFonts.montserrat5
                                  )
                              ),
                              SizedBox(height: he(8)),
                              Row(
                                children: [
                                  const Text("Bizning kurslar",
                                      style: TextStyle(
                                          color: Color(0xFF375BB9),
                                          fontSize: 12,
                                          fontFamily: AppFonts.montserrat5,
                                        fontWeight: FontWeight.w600
                                      )
                                  ),
                                   SizedBox(width: he(8)),
                                  const Icon(Icons.arrow_forward, size: 20, color: Color(0xFF375BB9),)
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                    // OPERATOR IMAGE
                    ClipRRect(
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30)),
                      child: Image.asset(
                        AppImages.operator,
                        height: he(180),
                          width: wi(180),
                          fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
            );
          },),
          options: CarouselOptions(
            height: he(130),
            disableCenter: true,
            enableInfiniteScroll: false,
            viewportFraction: 0.98,
          )),
    );
  }
}
