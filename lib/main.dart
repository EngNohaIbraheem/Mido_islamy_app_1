import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:islamic_design/SuraDetails/SuraDetailsScreen.dart';
import 'package:islamic_design/hadeth/hadethItem.dart';
import 'package:islamic_design/hadeth/hadethTab.dart';
import 'package:islamic_design/home/HomeScreen.dart';
import 'package:islamic_design/home/MyTheme.dart';
import 'package:islamic_design/provider/app_configar_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'hadethDetailsScreen/hadethDetailsScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {

  late SettingsProvider settingsProvider ;

  @override
  Widget build(BuildContext context) {
     settingsProvider = Provider.of(context);
    getValueFromSharedPreference();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
     theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingsProvider.themeMode,
      locale: Locale(settingsProvider.appLanguage),

      ///////themeMode:settingsProvider.currentTheme,

      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
  void getValueFromSharedPreference() async {
    final preferences = await SharedPreferences.getInstance();
    settingsProvider.changeLanguage(preferences.getString('language')??"en"); /// if no value null

    if(preferences.getString('theme') == 'dark') {
      settingsProvider.changeTheme(ThemeMode.dark);
    } else if(preferences.getString('theme')== 'light'){
      settingsProvider.changeTheme(ThemeMode.light);
    }
  }

}
