import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/routes_managet.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  HadithItem hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRoute,
          arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
