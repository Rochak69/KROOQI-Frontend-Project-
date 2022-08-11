import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/property_details/first_container.dart';
import 'package:flutter_application_1/screens/property_details/propert_bottom_bar/property_bottom_bar.dart';
import 'package:flutter_application_1/screens/property_details/property_information.dart';
import 'package:flutter_application_1/screens/property_details/proptery_tab_bar.dart';

class PropertyVideo extends StatelessWidget {
  static const name = 'video';
  const PropertyVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: 1600,
            ),
            const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                    height: 200,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/capture.JPG"),
                        height: 1000))),
            const Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Icon(
                  Icons.play_circle_filled_outlined,
                  size: 100,
                  color: Colors.white,
                )),
            Positioned(
                top: 300,
                left: 0,
                right: 0,
                child: Container(color: Colors.white, height: 300)),
            const Positioned(top: 180, child: PropertyInformation()),
            const FirstContainer(),
            PropertyTabBar(0)
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
