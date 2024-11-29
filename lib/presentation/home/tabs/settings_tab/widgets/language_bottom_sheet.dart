import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../../../../provider/proviader_settings.dart';
class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<settingsProvider>(context,listen: true);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: ()
              {
                provider.changeLanguage('en');
              },
              child:provider.currentLanguage=='en'? buildSelectedThemeItem(AppLocalizations.of(context)!.english):buildSUnelectedThemeItem(AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: ()
              {
                provider.changeLanguage('ar');
              },
              child:provider.currentLanguage=='ar'? buildSelectedThemeItem(AppLocalizations.of(context)!.arabic):buildSUnelectedThemeItem(AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget buildSelectedThemeItem (String text )
  {
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

  Widget buildSUnelectedThemeItem (String text)
  {
    return Row(
      children: [
        Text(text,
            style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}