import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_design/settings/languageBottonSheet.dart';
import 'package:provider/provider.dart';

import '../provider/app_configar_provider.dart';
import 'ThemeBottonSheet.dart';

class settingsTab extends StatefulWidget {
  @override
  State<settingsTab> createState() => _settingsTabState();
}

class _settingsTabState extends State<settingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider =
    Provider.of<SettingsProvider>(context); ////// CAPITAL LETTER
    return Container(
      margin: EdgeInsets.all(18),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(
              fontSize: 20,
            ),

            ////style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .primaryColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                )),
            child: InkWell(
              onTap: () {
                showLanguageBottonSheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    provider.appLanguage == 'english'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                  ),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.theme,
            style: TextStyle(
              fontSize: 20,
            ),

            ////style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .primaryColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                )),
            child: InkWell(
              onTap: () {
                showThemeBottonSheet();
                },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    provider.appLanguage == 'light'
                        ? AppLocalizations.of(context)!.light
                        : AppLocalizations.of(context)!.light,
                  ),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            ),
          ),
        ],
      ),


    );
  }


  void showLanguageBottonSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => languageBottonSheet(),
    );
  }

  void showThemeBottonSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => themeBottonSheet(),
    );
  }
}


