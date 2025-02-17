import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provder/setting_provider.dart';
import 'package:islami/theme/my_theme.dart';
import 'package:provider/provider.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.themeLabel),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context, provider);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              padding: EdgeInsets.all(8),
              child: Text(
                provider.mode == ThemeMode.dark
                    ? AppLocalizations.of(context)!.darkThemeLabel
                    : AppLocalizations.of(context)!.lightThemeLabel,
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
          ),
          const SizedBox(height: 12),
          Text(AppLocalizations.of(context)!.languageLabel),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context, provider);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 18),
              padding: EdgeInsets.all(8),
              child: Text(
                provider.locale == Locale("en")
                    ? AppLocalizations.of(context)!.englishLanguageLabel
                    : AppLocalizations.of(context)!.arabicLanguageLabel,
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context, SettingProvider provider) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Text(AppLocalizations.of(context)!.themeLabel),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    provider.enableDarkMode();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.darkThemeLabel,
                          style: TextStyle(color: Color(0xffF8F8F8)),
                        ),
                        if(provider.mode == ThemeMode.dark)
                            Icon(Icons.check, color: Colors.green)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: MyTheme.darkPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: MyTheme.darkSecondaryColor)),
                  ),
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    provider.enableLightMode();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.lightThemeLabel,
                          style: TextStyle(color: Color(0xff242424)),
                        ),
                        if(provider.mode == ThemeMode.light)
                          Icon(Icons.check, color: Colors.green)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffF8F8F8),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: Color(0xffB7935F))),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void showLanguageBottomSheet(BuildContext context, SettingProvider provider) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Text(AppLocalizations.of(context)!.languageLabel),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    provider.changeLanguage(Locale("en"));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.englishLanguageLabel,
                        ),
                        if(provider.locale == Locale("en"))
                            Icon(Icons.check, color: Colors.green)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color:
                            Theme.of(context).colorScheme.surfaceContainerLow,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary)),
                  ),
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {
                    provider.changeLanguage(Locale("ar"));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.arabicLanguageLabel,
                        ),
                        if(provider.locale == Locale("ar"))
                          Icon(Icons.check, color: Colors.green)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color:
                            Theme.of(context).colorScheme.surfaceContainerLow,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary)),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
