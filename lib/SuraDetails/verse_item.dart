import 'package:flutter/material.dart';
class verseWidget extends StatelessWidget {
String text;
int pos;
verseWidget(this.text,this.pos);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      alignment: Alignment.center,
      child: Text('$text {$pos}', /// to show nimber of surra (1)...
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
