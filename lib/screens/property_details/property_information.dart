import 'package:flutter/material.dart';

import 'package:flutter_application_1/Utils/container_decorations.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/property_details/details_screen/map_view.dart';
import 'package:flutter_application_1/screens/property_details/details_screen/property_details_photos.dart';
import 'package:flutter_application_1/screens/property_details/details_screen/video.dart';

class PropertyInformation extends StatelessWidget {
  const PropertyInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23),
      decoration:
          BoxDecoration(color: kColorAccent, borderRadius: topBorderOnly()),
      height: 200,
      width: 400,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    _navigateWithAnimation(const PropertyDetailsPhotos()));
              },
              child: _buildIconsWithValue(Icons.photo_album_outlined, "Photos"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, _navigateWithAnimation(const PropertyVideo()));
              },
              child: _buildIconsWithValue(Icons.video_call_outlined, "Videos"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, _navigateWithAnimation(const PropertyMapView()));
              },
              child: _buildIconsWithValue(Icons.map_outlined, "Map view"),
            )
          ]),
    );
  }

  _buildIconsWithValue(IconData icon, String value) {
    IconData iconData = icon;
    String val = value;
    return Container(
      height: 30,
      width: 100,
      decoration: shadowedCircularContainer(),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(iconData),
        const Padding(padding: EdgeInsets.all(2)),
        Text(val)
      ]),
    );
  }

  _navigateWithAnimation(Widget destination) {
    return PageRouteBuilder(
      pageBuilder: (c, a1, a2) => destination,
      transitionsBuilder: (c, anim, a2, child) =>
          FadeTransition(opacity: anim, child: child),
      transitionDuration: const Duration(milliseconds: 600),
    );
  }
}
