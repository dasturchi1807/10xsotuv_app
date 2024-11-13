import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sotuv_app/screens/splash_page.dart';
import 'core/sizeConfig.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
