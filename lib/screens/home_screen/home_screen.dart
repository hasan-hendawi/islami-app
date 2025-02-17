import 'package:flutter/material.dart';
import 'package:islami/provder/setting_provider.dart';
import 'package:islami/screens/home_screen/widgets/hadeth_widget.dart';
import 'package:islami/screens/home_screen/widgets/quran_widget.dart';
import 'package:islami/screens/home_screen/widgets/radio_widget.dart';
import 'package:islami/screens/home_screen/widgets/setting_widget.dart';
import 'package:islami/screens/home_screen/widgets/tasbeh_widget.dart';
import 'package:islami/theme/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String HomeScreenRoutePage = "home_screen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:provider.getBackgroundImage() ,
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.titleApp),
        ),
        body: items[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
              print(selectedIndex);
            },
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/images/quran.png"),
                  ),
                  label: AppLocalizations.of(context)!.quranLabel,
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/hadeth.png")),
                  label: AppLocalizations.of(context)!.hadethLabel,
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: AppLocalizations.of(context)!.sebhaaLabel,
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                  label: AppLocalizations.of(context)!.radioLabel,
                  backgroundColor: Theme.of(context).colorScheme.primary),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settingLabel,
                  backgroundColor: Theme.of(context).colorScheme.primary),
            ]),
      ),
    );
  }

  List<Widget> items = [
    QuranWidget(),
    HadethWidget(),
    TasbehWidget(),
    RadioWidget(),
    SettingWidget()
  ];
}
