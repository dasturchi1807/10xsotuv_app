import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../core/icons.dart';
import '../../core/sizeConfig.dart';

class Questions extends StatefulWidget {
  Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text("Savollar", style: TextStyle(
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
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: he(10)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
              child: Theme(
                    data: ThemeData(
                      dividerColor: Colors.transparent
                    ),
                    child: ExpansionTile(
                      showTrailingIcon: false,
                      leading: isExpanded == true ? SvgPicture.asset(AppIcons.minus) : SvgPicture.asset(AppIcons.plus),
                      title: Text("Question ${index+1}"),
                      onExpansionChanged: (value) {
                          setState(() {
                            isExpanded = value;
                          });
                      },
                      childrenPadding: const EdgeInsets.all(12),
                      children: const [
                        Text("Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, Lorem ipsum dolor sit amet, происходит от одной из строк в разделе 1.10.32", style: TextStyle(
                          fontSize: 15,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFonts.montserrat5
                        ),)
                      ],
                    ),
                  ));
        },),
      ),
    );
  }
}
