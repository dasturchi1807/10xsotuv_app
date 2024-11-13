import 'package:flutter/material.dart';
import 'package:sotuv_app/screens/course_topics/widgets/appbar.dart';
import 'package:sotuv_app/screens/course_topics/widgets/tab_bar2.dart';
import 'package:sotuv_app/screens/video_payer/video_payer_class.dart';

import '../../core/colors.dart';
import '../../core/images.dart';
import '../../core/sizeConfig.dart';

class CourseTopics extends StatelessWidget {
  CourseTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bgColor,
      appBar: Appbar(context),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          physics: const BouncingScrollPhysics(),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoPayerClass(),));
                },
                child: Image.asset(AppImages.anonimVideo,
                    height: he(225), width: wi(347), fit: BoxFit.fill),
              ),
              SizedBox(height: he(18)),
              tabBar2(context),
            ],
          ),
        ),
    );
  }
}
