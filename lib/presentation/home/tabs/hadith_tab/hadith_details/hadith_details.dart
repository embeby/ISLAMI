import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_offline/config/theme/my_theme.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../provider/proviader_settings.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<settingsProvider>(context,listen: true);
    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadith.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Card(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                child: SingleChildScrollView(
                    child: Text(
                      hadith.content,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.bodyLarge,
                ))),
          ),
        ),
      ),
    );
  }
}
