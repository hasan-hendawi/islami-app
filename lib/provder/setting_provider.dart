import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;
  Locale locale = Locale('ar');

  void enableDarkMode() {
    mode = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightMode() {
    mode = ThemeMode.light;
    notifyListeners();
  }

  AssetImage getBackgroundImage() {
    return AssetImage(mode == ThemeMode.dark
        ? "assets/images/dark_home_background.png"
        : "assets/images/home_background.png");
  }

  void changeLanguage(Locale newLocale) {
    locale = newLocale;
    notifyListeners();
  }
}
