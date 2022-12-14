import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadethItem.dart';
import 'hadeth_title_widget.dart';
class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if(allHadethList.isEmpty)
      loadHadethFile();
    return Container(
      child:
      Column(
        children: [
          Image.asset('assets/images/basmala.png'),
          Expanded(
            child: ListView.separated(itemBuilder: (buildContext,index){
              return HadethTitleWidget(allHadethList[index]);
            },
              itemCount: allHadethList.length,
              separatorBuilder: (buildContext, index) {
                return Container(
                  height: 2,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 64),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void loadHadethFile()async {
    List<Hadeth> hadethList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethContent = content.split("#");
    for (int i = 0; i < allHadethContent.length; i++){
      String singleHadeth = allHadethContent[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      Hadeth h = Hadeth(title, content);
      hadethList.add(h);
    }
    allHadethList = hadethList;
    setState(() {
    });
  }
}