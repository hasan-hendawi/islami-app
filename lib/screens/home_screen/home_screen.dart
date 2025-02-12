import 'package:flutter/material.dart';
import 'package:islami/screens/home_screen/widgets/hadeth_widget.dart';
import 'package:islami/screens/home_screen/widgets/quran_widget.dart';
import 'package:islami/screens/home_screen/widgets/radio_widget.dart';
import 'package:islami/screens/home_screen/widgets/tasbeh_widget.dart';
import 'package:islami/theme/my_theme.dart';

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

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage( MyTheme.mode==ThemeMode.dark?"assets/images/dark_home_background.png" : "assets/images/home_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),

        ),
        body:items[selectedIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {

            setState(() {
              selectedIndex=index;
            });
print(selectedIndex);
          },
            items:[
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/images/quran.png"),),label: "quran",backgroundColor: Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/images/hadeth.png")),label: "hadeth",backgroundColor: Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha",backgroundColor: Theme.of(context).colorScheme.primary),
            BottomNavigationBarItem(icon:const ImageIcon(AssetImage("assets/images/radio.png")),label: "radio",backgroundColor: Theme.of(context).colorScheme.primary),

        ] ),
      ),
    );
  }

  List<Widget> items=[
    QuranWidget(),
    HadethWidget(),
    TasbehWidget(),
    RadioWidget(),
  ];
}
