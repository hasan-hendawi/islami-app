import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';
import 'package:islami/screens/home_screen/home_screen.dart';
import 'package:islami/screens/splash_screen/splash_screen.dart';
import 'package:islami/screens/verses_screen/verses_screen.dart';
import 'package:islami/theme/my_theme.dart';

void main() {
runApp(const IslamiApp());
}


class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:MyTheme.lightTheme ,
      darkTheme: MyTheme.darkTheme,
      themeMode:MyTheme.mode ,
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

