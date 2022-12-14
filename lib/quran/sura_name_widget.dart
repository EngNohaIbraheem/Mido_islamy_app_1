import 'package:flutter/material.dart';
import 'package:islamic_design/SuraDetails/SuraDetailsScreen.dart';

class  SuraName_widget extends StatelessWidget {
 String title;
 int index;
 SuraName_widget(this.title, this.index);
  @override
  Widget build(BuildContext context) {    /// to be click on suraName
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
        arguments: SuraDetailsScreenArgs(index: index,
            name: title)
        );

      },
      child: Container(
        alignment: Alignment.center,
        child:Text(title,
           style: Theme.of(context).textTheme.headline4,
            ),

        ),
      );
  }
}
