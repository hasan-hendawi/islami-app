import 'package:flutter/material.dart';
import 'package:islami/screens/verses_screen.dart';

class QuranWidget extends StatelessWidget {
   QuranWidget({super.key});
List<String> versesName= ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return  Container(width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/quran_header.png"),
          Divider(thickness: 3,color: Theme.of(context).primaryColor,),
          Text("Verse Name",style: TextStyle(fontSize: 24),),
          Divider(thickness: 3,color: Theme.of(context).primaryColor,),
          Expanded(
            child: ListView.separated(itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(VersesScreen.VersesScreenRoutePage,arguments:VersesDetails(versesName: versesName[index],versesNumber: index) );
                },
                  child: Text(versesName[index],style: TextStyle(fontSize: 25),textAlign: TextAlign.center,));
            },
              separatorBuilder: (context,i){
              return Divider(thickness: 2,color:Theme.of(context).primaryColor,indent: 16, endIndent: 16,height: 20,);
              }
            ,itemCount: versesName.length,
            ),
          )
        ],
      ),
    );

  }


}

class VersesDetails{
String versesName;
int versesNumber;
VersesDetails({required this.versesName, required this.versesNumber});
}
