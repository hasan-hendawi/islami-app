import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/provder/setting_provider.dart';
import 'package:islami/screens/home_screen/widgets/quran_widget.dart';
import 'package:islami/screens/verses_screen/widgets/aya_item.dart';
import 'package:provider/provider.dart';

class VersesScreen extends StatefulWidget {
  static const String VersesScreenRoutePage = "verses_screen";

  VersesScreen({super.key});

  @override
  State<VersesScreen> createState() => _VersesScreenState();
}

class _VersesScreenState extends State<VersesScreen> {
  List<String> ayaVerse = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    var params = ModalRoute.of(context)?.settings.arguments as VersesDetails;
    if (ayaVerse.isEmpty) {
      readFile(params.versesNumber);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: provider.getBackgroundImage(),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(params.versesName),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 12,
                margin: EdgeInsets.symmetric(horizontal: 22, vertical: 50),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 26.0, left: 10, right: 10),
                  child: ayaVerse.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.separated(
                          itemCount: ayaVerse.length,
                          itemBuilder: (context, index) {
                            return AyaItem(aya: ayaVerse[index]);
                          },
                          separatorBuilder: (context, i) {
                            return Divider(
                              thickness: 2,
                              color: Theme.of(context).colorScheme.secondary,
                              indent: 14,
                              endIndent: 14,
                              height: 20,
                            );
                          },
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void readFile(int verseIndex) async {
    String verse = await rootBundle
        .loadString("assets/verses_content/${verseIndex + 1}.txt");
    await Future.delayed(Duration(seconds: 1));
    List<String> aya = verse.split("\n");
    ayaVerse = aya;
    setState(() {});
  }
}
