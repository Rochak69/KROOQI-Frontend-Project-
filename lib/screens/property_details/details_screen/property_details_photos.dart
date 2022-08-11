import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/property_details/first_container.dart';
import 'package:flutter_application_1/screens/property_details/propert_bottom_bar/property_bottom_bar.dart';
import 'package:flutter_application_1/screens/property_details/property_image_carousel.dart';
import 'package:flutter_application_1/screens/property_details/property_information.dart';
import 'package:flutter_application_1/screens/property_details/proptery_tab_bar.dart';

class PropertyDetailsPhotos extends StatelessWidget {
  static const name = 'hhh';
  const PropertyDetailsPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(height: 1600),
            const PropertImageCarousel(),
            const Positioned(top: 180, child: PropertyInformation()),
            const FirstContainer(),
            PropertyTabBar(2)
          ]),
        ),
        bottomNavigationBar: const PropertyBottomBar(),
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
              debugPrint("Tapped");
            },
            child: const Icon(Icons.more_vert))
      ],
    );
  }
}
