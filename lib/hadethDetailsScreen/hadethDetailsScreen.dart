import 'package:flutter/material.dart';

import '../hadeth/hadethItem.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Card(
              elevation: 12,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(args.content,
                    textDirection: TextDirection.rtl ,
                    style: TextStyle(
                      fontSize: 22,
                    ),),
                ),
              ),
            ),
          ),
        ));
  }
}