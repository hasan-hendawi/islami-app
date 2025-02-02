import 'package:flutter/material.dart';

class AyaItem extends StatelessWidget {
    AyaItem({super.key,required this.aya});
 String aya;
  @override
  Widget build(BuildContext context) {
    return  Text(aya, style: TextStyle(fontSize: 26,),textAlign: TextAlign.center,);
  }
}
