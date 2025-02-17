import 'package:flutter/material.dart';
import 'package:islami/provder/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class TasbehWidget extends StatefulWidget {
  const TasbehWidget({super.key});

  @override
  State<TasbehWidget> createState() => _TasbehWidgetState();
}

class _TasbehWidgetState extends State<TasbehWidget> {
  int counter = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    List<String> tasbeeh = ["سبحان الله", "الحمد لله", "الله اكبر"];
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Image.asset(provider.mode==ThemeMode.dark?"assets/images/dark_tasbeah.png":"assets/images/tasbeah.png"),
          SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.numberOfTasbeehs,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.45),
                borderRadius: BorderRadius.circular(10)),
            child: Text(counter.toString(),style: TextStyle(fontSize: 25),),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
                if (currentIndex < tasbeeh.length - 1 && counter > 33) {
                  currentIndex += 1;
                  counter = 0;
                } else if (currentIndex == tasbeeh.length - 1 && counter > 33) {
                  currentIndex = 0;
                  counter = 0;
                }
              });
            },
            child: Text(
              tasbeeh[currentIndex],
              style: TextStyle(fontSize: 25),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Theme.of(context).colorScheme.primary, // Background color
              foregroundColor: Colors.white, // Text color
            ),
          ),
        ],
      ),
    );
  }
}
