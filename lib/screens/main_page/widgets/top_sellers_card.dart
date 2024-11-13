import 'package:flutter/material.dart';
import 'package:sotuv_app/core/colors.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/sizeConfig.dart';

class TopSellersCard extends StatelessWidget {
  String? image;
  String? title;
  TopSellersCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(208),
      // width: wi(170),
      padding: EdgeInsets.fromLTRB(wi(12), he(12), wi(12), he(12)),
      margin: EdgeInsets.only(right: wi(8)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset(image!),
          ),
          SizedBox(height: he(12)),
          Text(title!, style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: AppFonts.montserrat5,
          ),),
          SizedBox(height: he(8)),
          const Text("2 590 000 UZS", style: TextStyle(
            fontSize: 12,
            color: AppColors.blueColor,
            fontWeight: FontWeight.w600,
            fontFamily: AppFonts.montserrat5,
          ),)
        ],
      ),
    );
  }
}
