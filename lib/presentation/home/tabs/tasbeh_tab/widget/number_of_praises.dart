import 'package:flutter/material.dart';
class NumberOfPraises extends StatelessWidget {
  List<int>counterList=[];
   NumberOfPraises({required this.counterList});

  @override
  Widget build(BuildContext context)
  {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("أستغفر اللهُ",style: Theme.of(context).textTheme.labelLarge,),
                      Text("${counterList[0]}",style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("الْلَّهُ وأَكْبَر",style: Theme.of(context).textTheme.labelLarge,),
                      Text("${counterList[1]}",style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("لَا إِلَهَ إِلَّا اللَّهُ",style: Theme.of(context).textTheme.labelLarge,),
                      Text("${counterList[2]}",style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("سُبْحَانَ اللَّه",style: Theme.of(context).textTheme.labelLarge,),
                      Text("${counterList[3]}",style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
