import 'package:flutter/material.dart';
import 'package:sotuv_app/core/images.dart';
import 'package:sotuv_app/core/sizeConfig.dart';

import 'onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        return Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Image(
          height: he(126),
          width: wi(189),
          image: const AssetImage(AppImages.logo),
        )));
  }
}