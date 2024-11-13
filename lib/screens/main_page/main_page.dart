import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/images.dart';
import 'package:sotuv_app/core/sizeConfig.dart';
import 'package:sotuv_app/screens/main_page/widgets/appbar.dart';
import 'package:sotuv_app/screens/main_page/widgets/top_sellers_card.dart';
import 'package:sotuv_app/screens/main_page/widgets/up_cards.dart';
import '../../core/fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bgColor,
      appBar: Appbar(),
      // ALL CARDS
      body: Padding(
        padding: EdgeInsets.only(left: wi(12), top: he(12)),
        child: ListView(
          physics: BouncingScrollPhysics(),
            children: [
              // YUQOORI CARDLAR
              const UpCards(),
              SizedBox(height: he(24)),
              // ENG KO'P SOTILAYOTGANLAR
              const Text("Eng ko'p sotilayotganlar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w600
                  )),
              SizedBox(height: he(12)),
              CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index, realIndex) {
                return TopSellersCard(image: AppImages.onx, title: "10x Sotuv online kursi");
              },
                  options: CarouselOptions(
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  disableCenter: true,
                  viewportFraction: 0.49,
                  padEnds: false
              )),
              SizedBox(height: he(24),),
              // PLATFORMA TAKLIFI
              const Text("Platforma taklifi",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w600
                  )),
              SizedBox(height: he(12)),
              CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index, realIndex) {
                return TopSellersCard(image: AppImages.onxCallCenter, title: "10x Call center");
              },
                  options: CarouselOptions(
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                      disableCenter: true,
                      viewportFraction: 0.49,
                      padEnds: false
                  )),
              SizedBox(height: he(24),),
              // ANONIM QO'NG'IROQLAR
              const Text("Anonim qo'ng'iroqlar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: AppFonts.montserrat5,
                      fontWeight: FontWeight.w600
                  )),
              SizedBox(height: he(12)),
              CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index, realIndex) {
                return TopSellersCard(image: AppImages.anonimCalls, title: "Anonim qo'ng'iroqlar");
              },
                  options: CarouselOptions(
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                      disableCenter: true,
                      viewportFraction: 0.49,
                      padEnds: false
                  )),
              SizedBox(height: he(20),)
            ],
          ),
        ),
    );
  }
}
