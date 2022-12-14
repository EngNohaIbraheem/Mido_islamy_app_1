import 'package:flutter/material.dart';

import '../hadethDetailsScreen/hadethDetailsScreen.dart';
import 'hadethItem.dart';


class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;
  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}