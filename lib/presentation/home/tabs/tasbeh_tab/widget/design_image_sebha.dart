import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../provider/proviader_settings.dart';

class DesignImageSebha extends StatelessWidget {
  double countImage;
   DesignImageSebha({required this.countImage});

  @override
  Widget build(BuildContext context)
  {
    var provide =Provider.of<settingsProvider>(context,listen: true);
    return  Expanded(
      flex: 4,
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.34,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                right: 133,
                top: -1,
                child: Image.asset(
                  height: MediaQuery.of(context).size.height * 0.12,
                 provide.getHeadLogoTabeh(),
                ),
              ),
              Positioned(
                top: 73,
                left: 98,
                child: Transform.rotate(
                  angle: countImage,
                  child: Image.asset(
                    height: MediaQuery.of(context).size.height * 0.24,
                    provide.getLogoTabeh()
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
