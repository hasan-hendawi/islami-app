import 'package:flutter/material.dart';
import 'package:islami/screens/home_screen/widgets/quran_widget.dart';

class VersesScreen extends StatelessWidget {
  static const String VersesScreenRoutePage = "verses_screen";

  const VersesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var params = ModalRoute.of(context)?.settings.arguments as VersesDetails;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/home_background.png"))

      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(params.versesName),

          ),
          body: Text("")),
    )
      ;
  }
}
