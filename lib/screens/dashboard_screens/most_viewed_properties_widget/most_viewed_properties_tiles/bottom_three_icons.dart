import 'package:flutter/material.dart';

class BottomThreeIcons extends StatelessWidget {
  const BottomThreeIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildIconsWithValue(Icons.house_outlined, "20"),
        const Padding(padding: EdgeInsets.all(15)),
        _buildIconsWithValue(Icons.house_outlined, "20"),
        const Padding(padding: EdgeInsets.all(15)),
        _buildIconsWithValue(Icons.house_outlined, "20"),
      ],
    );
  }

  _buildIconsWithValue(IconData icon, String value) {
    IconData iconData = icon;
    String val = value;
    return Container(
      height: 25,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Row(children: [
        Icon(iconData),
        const Padding(padding: EdgeInsets.all(2)),
        Text(val)
      ]),
    );
  }
}
