import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/big_text.dart';
import 'package:flutter_application_1/Utils/small_colored_text.dart';

import '../../../Utils/container_decorations.dart';
import '../../welcome_pages/sign_in_screen/sign_in_screen.dart';

// ignore: must_be_immutable
class DashboardTiles extends StatelessWidget {
  IconData tileIcon = Icons.abc;
  String tilevalue = "";
  String tileText = "";
  DashboardTiles(IconData icon, String value, String text, {Key? key})
      : super(key: key) {
    tileIcon = icon;
    tilevalue = value;
    tileText = text;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, SignInScreen.name);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: shadowedCircularContainer(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  tileIcon,
                  size: 60,
                ),
                BigText(tilevalue),
                SmallColoredText(tileText)
              ]),
        ));
  }
}
