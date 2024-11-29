import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../../../../provider/proviader_settings.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<settingsProvider>(context, listen: true);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeAppTheme(ThemeMode.light);
              },
              child: provider.currentTheme == ThemeMode.light
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.light)
                  : buildSUnelectedThemeItem(
                      AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: ()
              {
                provider.changeAppTheme(ThemeMode.dark);
              },
              child:
                  provider.currentTheme==ThemeMode.dark?
                  buildSelectedThemeItem(AppLocalizations.of(context)!.dark):buildSUnelectedThemeItem(AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }
  Widget buildSelectedThemeItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Icon(Icons.check),
      ],
    );
  }

  Widget buildSUnelectedThemeItem(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
