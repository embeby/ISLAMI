import 'package:flutter/material.dart';

import '../core/utils/assets_manager.dart';

class settingsProvider extends ChangeNotifier
{
  ThemeMode currentTheme =ThemeMode.light;
  String currentLanguage='en';
  void changeAppTheme(ThemeMode newTheme)
  {
    if(currentTheme==newTheme)return;
    currentTheme=newTheme;
    notifyListeners() ;
  }
  String getBackgroundImage ()
  {
    return currentTheme==ThemeMode.light?AssetsManager.lightMainBg:AssetsManager.darkMainBg;
  }
void changeLanguage (String newLanguage)
{
 if(currentLanguage==newLanguage)return;
 currentLanguage=newLanguage;
 notifyListeners();
}
String getLogoTabeh()
{
  return currentTheme==ThemeMode.light?AssetsManager.logoSebhaLight:AssetsManager.logoSebhaDark;
}
  String getHeadLogoTabeh()
  {
    return currentTheme==ThemeMode.light?AssetsManager.logoheadSebhaLight:AssetsManager.logoheadSebhaDark;
  }


}



