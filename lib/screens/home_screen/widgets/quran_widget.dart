import 'package:flutter/material.dart';
import 'package:islami/screens/verses_screen/verses_screen.dart';

class QuranWidget extends StatelessWidget {
  QuranWidget({super.key});

  List<String> versesName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> versesCount = [
    "7", // الفاتحة
    "286", // البقرة
    "200", // آل عمران
    "176", // النساء
    "120", // المائدة
    "165", // الأنعام
    "206", // الأعراف
    "75", // الأنفال
    "129", // التوبة
    "109", // يونس
    "123", // هود
    "111", // يوسف
    "43", // الرعد
    "52", // إبراهيم
    "99", // الحجر
    "128", // النحل
    "111", // الإسراء
    "110", // الكهف
    "98", // مريم
    "135", // طه
    "112", // الأنبياء
    "78", // الحج
    "118", // المؤمنون
    "64", // النور
    "77", // الفرقان
    "227", // الشعراء
    "93", // النمل
    "88", // القصص
    "69", // العنكبوت
    "60", // الروم
    "34", // لقمان
    "30", // السجدة
    "73", // الأحزاب
    "54", // سبأ
    "45", // فاطر
    "83", // يس
    "182", // الصافات
    "88", // ص
    "75", // الزمر
    "85", // غافر
    "54", // فصلت
    "53", // الشورى
    "89", // الزخرف
    "59", // الدخان
    "37", // الجاثية
    "35", // الأحقاف
    "38", // محمد
    "29", // الفتح
    "18", // الحجرات
    "45", // ق
    "60", // الذاريات
    "49", // الطور
    "62", // النجم
    "55", // القمر
    "78", // الرحمن
    "96", // الواقعة
    "29", // الحديد
    "22", // المجادلة
    "24", // الحشر
    "13", // الممتحنة
    "14", // الصف
    "11", // الجمعة
    "18", // المنافقون
    "12", // التغابن
    "12", // الطلاق
    "30", // التحريم
    "52", // الملك
    "52", // القلم
    "44", // الحاقة
    "28", // المعارج
    "28", // نوح
    "20", // الجن
    "56", // المزمل
    "40", // المدثر
    "31", // القيامة
    "50", // الإنسان
    "40", // المرسلات
    "46", // النبأ
    "42", // النازعات
    "29", // عبس
    "19", // التكوير
    "36", // الانفطار
    "25", // المطففين
    "22", // الانشقاق
    "17", // البروج
    "19", // الطارق
    "26", // الأعلى
    "30", // الغاشية
    "20", // الفجر
    "15", // البلد
    "21", // الشمس
    "11", // الليل
    "8", // الضحى
    "8", // الشرح
    "19", // التين
    "5", // العلق
    "8", // القدر
    "8", // البينة
    "11", // الزلزلة
    "11", // العاديات
    "8", // القارعة
    "3", // التكاثر
    "9", // العصر
    "5", // الهمزة
    "4", // الفيل
    "7", // قريش
    "3", // الماعون
    "6", // الكوثر
    "3", // الكافرون
    "6", // النصر
    "3", // المسد
    "5", // الإخلاص
    "4", // الفلق
    "5" // الناس
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset("assets/images/quran_header.png"),
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Verse Count",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
                VerticalDivider(
                  thickness: 4,
                  color: Theme.of(context).primaryColor,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "Verse Name",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            flex: 3,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        VersesScreen.VersesScreenRoutePage,
                        arguments: VersesDetails(
                            versesName: versesName[index],
                            versesNumber: index));
                  },
                  child: SizedBox(
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            versesCount[index],
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        VerticalDivider(
                          thickness: 3,
                          color: Theme.of(context).primaryColor,
                        ),


                        Expanded(
                          child: Text(
                            versesName[index],
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider(
                  thickness: 2,
                  color: Theme.of(context).primaryColor,
                  indent: 16,
                  endIndent: 16,
                  height: 12,

                );
              },
              itemCount: versesName.length,
            ),
          )
        ],
      ),
    );
  }
}

class VersesDetails {
  String versesName;
  int versesNumber;

  VersesDetails({required this.versesName, required this.versesNumber});
}
