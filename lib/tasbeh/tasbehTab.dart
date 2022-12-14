import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_configar_provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  double angle =0;
int counter =0;
  int currentIndex = 0;

List<String>azkar =[
'سبحان الله',
'الحمد لله',
'الله اكبر ',
'لا اله الا الله',
];
  void rotateSebhaBody(){
    setState(() {
      angle --;
     counter++;
     if(counter==34){
       counter=0;
       currentIndex++;
     }
    });
  }

  @override
  Widget build(BuildContext context) {
  var provider =  Provider.of<SettingsProvider>(context);

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.24,

            child: Stack(
              children: [
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.60,
                    child: provider.appTheme == ThemeMode.dark
                    ?Image.asset("assets/images/sebhahead.png")
                     :Image.asset("assets/images/sebhahead.png"),

    ),
                Positioned(
                  top:30,
                    left: MediaQuery.of(context).size.width * 0.50,
                   child: InkWell(
                      onTap: (){
                        rotateSebhaBody();
                      } ,
                         child:  Transform.rotate(
                           angle: angle,
                             child: Image.asset("assets/images/sebhabody.png"))
                    ),
                    ),
              ],
            ),
          ),
          Text(
            "عدد التسبيحات",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 60,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),),
              child: Text('$counter'
                , style: Theme.of(context).textTheme.headline6,),

    ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 160,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),),
            child: Text(
              azkar[currentIndex],

               style: Theme.of(context).textTheme.headline6,),

          ),

        ],
      ),
    );
  }
}
