import 'package:flutter/material.dart';
import 'package:islami/provder/setting_provider.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';
import 'package:islami/screens/home_screen/home_screen.dart';
import 'package:islami/screens/splash_screen/splash_screen.dart';
import 'package:islami/screens/verses_screen/verses_screen.dart';
import 'package:islami/theme/my_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
runApp(ChangeNotifierProvider(create:(context)=> SettingProvider() ,
    child: const IslamiApp()));
}


class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      localizationsDelegates:  const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],locale: provider.locale,
      theme:MyTheme.lightTheme ,
      darkTheme: MyTheme.darkTheme,
      themeMode:provider.mode ,
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

