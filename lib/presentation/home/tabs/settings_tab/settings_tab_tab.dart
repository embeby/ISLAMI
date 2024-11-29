import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/settings_tab/widgets/language_bottom_sheet.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../provider/proviader_settings.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<settingsProvider>(context,listen: true);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.theme, style: Theme.of(context).textTheme.labelSmall),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    provider.currentTheme==ThemeMode.light?
                    AppLocalizations.of(context)!.light: AppLocalizations.of(context)!.dark
                    ,
                    style: Theme.of(context).textTheme.labelSmall,
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
                provider.currentLanguage=='en'?
                AppLocalizations.of(context)!.english: AppLocalizations.of(context)!.arabic, style: Theme.of(context).textTheme.labelSmall),
            SizedBox(
              height: 4,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary, width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.labelSmall,
                  )),
            )
          ],
        ),
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
