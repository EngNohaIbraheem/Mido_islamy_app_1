import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_design/SuraDetails/verse_item.dart';
class SuraDetailsScreen extends StatefulWidget {
 static String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
 List<String> verses = [];
 /// to show ayaaaaaaaaaaaaat
  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs args = ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    readFiles(args.index);
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/images/background.png"))),


      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),

        body: Card(
          color: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white70,
              width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(vertical: 64,horizontal: 16),
          child: verses.isEmpty?
          CircularProgressIndicator()
          :ListView.separated(itemBuilder: (_,index){
            return verseWidget(verses[index],index+1);  /// to show the text of suraaaaaaaaaaaaaaaaaaaaaa
          },
          itemCount: verses.length,
            separatorBuilder: (_,index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                height: 2, /// line btween suraaaaaaaaaaa
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                ///to take fullscreen /////////////
              );
            },


          )
          ,
        ),
      ),

    );
  }
  void readFiles(int index)async{
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
      content.split('\n');
    var lines = content.split('\n'); /// ayaat monohasella
    setState(() {
      verses = lines;

    });

  }
}
class SuraDetailsScreenArgs{
  int index;
  String name;
  SuraDetailsScreenArgs({required this.index, required this.name});
}