import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_offline/my_app/my_app.dart';
import 'package:quran_app_c12_offline/provider/proviader_settings.dart';

void main() {
  runApp(ChangeNotifierProvider
    (create: (BuildContext context)=>settingsProvider(),
    child: MyApp()));
}
