import 'package:flutter/material.dart';
import 'package:islami/screens/home_screen/home_screen.dart';
import 'package:islami/theme/my_theme.dart';

class SplashScreen extends StatelessWidget {
  static const String SplashScreenRoutePage = "splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),()=>Navigator.of(context).pushReplacementNamed(HomeScreen.HomeScreenRoutePage));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image:AssetImage(MyTheme.mode==ThemeMode.dark? "assets/images/dark_splash_screen.png":"assets/images/splash_screen.png"),fit:BoxFit.fill)),
        // child: Image.asset("assets/images/splash_screen.png"),
      ),
    );
  }
}
