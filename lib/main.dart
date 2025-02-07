import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';
import 'package:islami/screens/home_screen/home_screen.dart';
import 'package:islami/screens/splash_screen/splash_screen.dart';
import 'package:islami/screens/verses_screen/verses_screen.dart';

void main() {
runApp(const IslamiApp());
}


class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffB7935F),
scaffoldBackgroundColor: Colors.transparent,
progressIndicatorTheme: ProgressIndicatorThemeData(color: Color(0xffB7935F)),
appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent,

  titleTextStyle: TextStyle(fontSize: 30,color: Color(0xff242424),fontWeight: FontWeight.bold),
  centerTitle: true
),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),selectedItemColor: Color(0xff242424)
        ),
      ),
    initialRoute: SplashScreen.SplashScreenRoutePage,
      routes: {
      HomeScreen.HomeScreenRoutePage:(context)=> HomeScreen(),
      VersesScreen.VersesScreenRoutePage:(context)=> VersesScreen(),
      HadethScreen.HadethScreenRoutePage:(context)=> HadethScreen(),

      },
      debugShowCheckedModeBanner: false,
      home:const SplashScreen(),
    );
  }
}

