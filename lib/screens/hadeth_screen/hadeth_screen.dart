import 'package:flutter/material.dart';

import '../home_screen/widgets/hadeth_widget.dart';

class HadethScreen extends StatefulWidget {
  static const String HadethScreenRoutePage = "hadeth_screen";

  HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)?.settings.arguments as HadethDetails;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/home_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.hadethTitle),
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
                  child: ListView.separated(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Text(
                        hadeth.hadethContent,
                        style: TextStyle(
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.center,
                      );
                    },
                    separatorBuilder: (context, i) {
                      return Divider(
                        thickness: 1,
                        color: Theme.of(context).primaryColor,
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
}
