import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/big_text.dart';
import 'package:flutter_application_1/providers/properties_provider.dart';

import '../../../Utils/container_decorations.dart';

import 'most_viewed_properties_tiles/most_viewed_properties_tiles.dart';
import 'package:provider/provider.dart';

class MostViewedPropertiesWidget extends StatelessWidget {
  const MostViewedPropertiesWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Properties(),
      child: Container(
          decoration: shadowedCircularContainer(),
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(children: [
                _buildTitle(),
                const SizedBox(height: 3),
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(children: const [
                      MostViewedPropertiesTiles(),
                    ]))
              ]))),
    );
  }

  _buildTitle() {
    return Row(children: [
      const Padding(padding: EdgeInsets.only(left: 10)),
      BigText("Most viewed Properties"),
    ]);
  }
}
