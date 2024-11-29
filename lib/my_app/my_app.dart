import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_offline/config/theme/my_theme.dart';
import 'package:quran_app_c12_offline/presentation/home/home_screen.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_details/hadith_details.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:quran_app_c12_offline/presentation/splash/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../core/utils/routes_managet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../provider/proviader_settings.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<settingsProvider>(context,listen: true);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
        locale: Locale(provider.currentLanguage),
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.hadithDetailsRoute: (_) => HadithDetails(),
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode:provider.currentTheme
    );
  }
}

