import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import '../provider/app_configar_provider.dart';

class themeBottonSheet extends StatefulWidget {
  @override
  State<themeBottonSheet> createState() => _themeBottonSheetState();
}

class _themeBottonSheetState extends State<themeBottonSheet> {
  @override
  Widget build(BuildContext context) {
    var provider =  Provider.of<SettingsProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
             /// provider.themeMode;
              provider.changeTheme(ThemeMode.light);

            },
            child:
            provider.appTheme == ThemeMode.light?
            getSelectedItemWidget(AppLocalizations.of(context)!.light):
            getUnSelectedItemWidget(AppLocalizations.of(context)!.light),

          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
            },
            child:
            provider.appTheme == ThemeMode.dark?
            getSelectedItemWidget(AppLocalizations.of(context)!.dark):
            getUnSelectedItemWidget(AppLocalizations.of(context)!.dark),

          ),


        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline4,
        ),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget getUnSelectedItemWidget(String text) {
    return Text(
      text ,   );
  }
}
