  import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/tasbeh_tab/widget/design_image_sebha.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/tasbeh_tab/widget/number_of_praises.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../provider/proviader_settings.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}
class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  List<String> TasbihTatitle = [
    "أستغفر الله",
    "الْلَّهُ وأَكْبَرُ ",
    "لَا إِلَهَ إِلَّا اللَّهُ ",
    "سُبْحَانَ اللَّهِ"
  ];
  int selected = 0;
  double ang = 0;
  int sumCount=0;
  List<int>counterList=[0,0,0,0];
  @override
  Widget build(BuildContext context) {
    var provide =Provider.of<settingsProvider>(context,listen: true);
    return Scaffold(
      body: Column(
         children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
           DesignImageSebha(countImage: ang),
           Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "عدد التسبيحات",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Container(
                alignment: Alignment.center,
                height: 90,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: provide.currentTheme==ThemeMode.light?ColorsManager.colorCounterTasbihLigth:ColorsManager.colorCounterTasbihDark
                ),
                child: Text(
                  '$counter',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor:provide.currentTheme==ThemeMode.light?ColorsManager.colorButtonTasbihLigth:ColorsManager.colorButtonTasbihDark
                  ),
                  onPressed: () {
                    counterTsbih();
                  },
                  child: Text(
                    TasbihTatitle[selected],
                    style: Theme.of(context).textTheme.titleLarge,
                  )),
            ),
          ),
           ],
      ),
    );
  }
  void counterTsbih ()
  {
    if (counter < 33)
    {
      counter++;
    }
    else
    {
      sumCount=counterList[selected];
      sumCount+=counter;
      counterList[selected]=sumCount;
      if (selected < TasbihTatitle.length - 1)
      {
        selected++;
      }
      else
      {
        selected = 0;
      }
      counter = 0;
    }
    setState(() {
      ang += 100;
    });
  }
}


