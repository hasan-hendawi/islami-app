import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/screens/hadeth_screen/hadeth_screen.dart';

class HadethWidget extends StatelessWidget {
   HadethWidget({super.key});
List<HadethDetails> ahadethDetails=[];
  @override
  Widget build(BuildContext context) {
    readFile();
    return  Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1,
              child: Image.asset("assets/images/hadeth_header.png")),
          Divider(thickness: 3,color: Theme.of(context).primaryColor,),
          Text("Hadeth Name",style: TextStyle(fontSize: 24),),
          Divider(thickness: 3,color: Theme.of(context).primaryColor,),
          Expanded(flex: 3,
            child: ListView.separated(itemBuilder: (context,index){
              return InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(HadethScreen.HadethScreenRoutePage,);
                  },
                  child: Text(ahadethDetails[index].hadethTitle,style: TextStyle(fontSize: 25),textAlign: TextAlign.center,));
            },
              separatorBuilder: (context,i){
                return Divider(thickness: 2,color:Theme.of(context).primaryColor,indent: 16, endIndent: 16,height: 20,);
              }
              ,itemCount:ahadethDetails.length,
            ),
          )
        ],
      ),
    );
  }
  void readFile()async{
    String content=await rootBundle.loadString("assets/hadeth_content/ahadeth.txt");
    // print(content);
   List<String> ahadeth= content.trim().split("#");
   for(int i =0 ;i<ahadeth.length;i++){
     List<String> hadeth = ahadeth[i].trim().split("\n");

    String hadethTitle= hadeth[0].trim(); //الحديث الاول
     hadeth.removeAt(0);

    String hadethContent = hadeth.join("\n");
     ahadethDetails.add(HadethDetails(hadethTitle: hadethTitle, hadethContent: hadethContent));
   }

    print(ahadethDetails[1].hadethTitle);

  }
}
class HadethDetails{
  String hadethTitle;
  String hadethContent;
  HadethDetails({required this.hadethTitle, required this.hadethContent});
}