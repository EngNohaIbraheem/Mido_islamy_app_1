import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:islamic_design/Quran/quranTab.dart';
import 'package:islamic_design/settings/settingsTab.dart';
import 'package:islamic_design/tasbeh/tasbehTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../hadeth/hadethTab.dart';
import '../provider/app_configar_provider.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider =  Provider.of<SettingsProvider>(context);

    return Stack(
      children: [
      provider.isDarkMode()?
       Image.asset('assets/images/dark_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      )
       :
      Image.asset('assets/images/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      )
        ,
      Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:
                const ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Tasbeh'),
          //  BottomNavigationBarItem(
            //    backgroundColor: Theme.of(context).primaryColor,
              //  icon: const ImageIcon(AssetImage('assets/images/radio.png')),
                //label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:Icon(Icons.settings),
                label: 'settings'),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), settingsTab()];
}
