import 'package:flutter/material.dart';

import 'package:flutter_application_1/constants/theme.dart';

import 'package:flutter_application_1/screens/property_details/first_container.dart';

import 'package:flutter_application_1/screens/property_details/property_information.dart';
import 'package:flutter_application_1/screens/property_details/proptery_tab_bar.dart';

class PropertyMapView extends StatelessWidget {
  static const name = 'map';
  const PropertyMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: 1450,
            ),
            Column(
              children: [
                _buildMaps(),
                Container(color: kColorAccent, height: 500)
              ],
            ),
            const Positioned(top: 180, child: PropertyInformation()),
            const FirstContainer(),
            PropertyTabBar(3)
          ]),
        ),
        // bottomNavigationBar: PropertyBottomBar(),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text("Property Details"),
      actions: <Widget>[
        GestureDetector(
            onTap: () {
              print("Tapped");
            },
            child: const Icon(Icons.more_vert))
      ],
    );
  }

  _buildMaps() {
    return const Image(
      height: 300,
      image: AssetImage("assets/maps.JPG"),
      fit: BoxFit.cover,
    );
  }
}
