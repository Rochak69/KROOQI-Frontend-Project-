import 'package:flutter/material.dart';

import 'package:flutter_application_1/Utils/container_decorations.dart';
import 'package:flutter_application_1/constants/theme.dart';

class PropertyBottomBar extends StatelessWidget {
  const PropertyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:
          BoxDecoration(color: kColorAccent, borderRadius: topBorderOnly()),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildIconsWithValue(Icons.house_outlined, "20"),
            _buildIconsWithValue(Icons.house_outlined, "20"),
            _buildIconsWithValue(Icons.house_outlined, "20"),
          ]),
    );
  }

  _buildIconsWithValue(IconData icon, String value) {
    IconData iconData = icon;
    String val = value;
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(iconData),
        const Padding(padding: EdgeInsets.all(2)),
        Text(val)
      ]),
    );
  }
}
