import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_offline/config/theme/my_theme.dart';
import 'package:quran_app_c12_offline/core/utils/assets_manager.dart';
import 'package:quran_app_c12_offline/core/utils/strings_manager.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/settings_tab/settings_tab_tab.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/tasbeh_tab/tasbeh_tab_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../provider/proviader_settings.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingsProvider>(context,listen: true);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  selectedIndex = index; // 1
                });
              },
              currentIndex: selectedIndex,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                    label: AppLocalizations.of(context)!.quranTap),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                    label: AppLocalizations.of(context)!.hadithTap),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),
                    label: AppLocalizations.of(context)!.tasbehTap),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                    label: AppLocalizations.of(context)!.radioTap),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settingsTap),
              ]),
        ),

        body: tabs[selectedIndex], // 1
      ),
    );
  }
}
