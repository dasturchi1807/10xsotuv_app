import 'package:flutter/material.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:sotuv_app/core/images.dart';
import 'package:sotuv_app/core/sizeConfig.dart';

import 'main_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ONBOARDING IMAGE
              ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                child: Image.asset(
                            AppImages.onboarding,
                            width: double.infinity,
                            height: he(493),
                            fit: BoxFit.cover,
                          ),
              ),
          // ONBOARDING TEXTS
          Padding(
              padding: EdgeInsets.only(left: wi(13), top: he(32), right: wi(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text(
                      "Islombek Ibragimov",
                      style: TextStyle(
                        color: Color(0xFF375BB9),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.pacifico,
                      ),
                    ),
                  SizedBox(height: he(16)),
                  const Text(
                      "Sotuvni Professionaldan o'rganing",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        fontFamily: AppFonts.montserrat5,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                  SizedBox(height: he(16)),
                  const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: AppFonts.montserrat5,
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
      // ENTER BUTTON
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF375BB9),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ),
            (route) => false,
          );
        },
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
