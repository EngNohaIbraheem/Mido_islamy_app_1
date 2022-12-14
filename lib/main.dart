import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:islamic_design/SuraDetails/SuraDetailsScreen.dart';
import 'package:islamic_design/hadeth/hadethItem.dart';
import 'package:islamic_design/hadeth/hadethTab.dart';
import 'package:islamic_design/home/HomeScreen.dart';
import 'package:islamic_design/home/MyTheme.dart';
import 'package:islamic_design/provider/app_configar_provider.dart';
import 'hadethDetailsScreen/hadethDetailsScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider =  Provider.of<SettingsProvider>(context);


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode:settingsProvider.currentTheme,

      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },



      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.appLanguage),
    );
  }
}
