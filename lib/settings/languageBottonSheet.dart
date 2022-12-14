import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import '../provider/app_configar_provider.dart';

class languageBottonSheet extends StatefulWidget {
  @override
  State<languageBottonSheet> createState() => _languageBottonSheetState();
}

class _languageBottonSheetState extends State<languageBottonSheet> {
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
              provider.changeLanguage('en');
            },
            child:
            provider.appLanguage == 'en'?
                getSelectedItemWidget(AppLocalizations.of(context)!.english):
            getUnSelectedItemWidget(AppLocalizations.of(context)!.english),

          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');
            },
            child:
            provider.appLanguage == 'ar'?
            getSelectedItemWidget(AppLocalizations.of(context)!.arabic):
            getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic),

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
