import 'package:flutter/material.dart';

import '../constants/theme.dart';

// ignore: must_be_immutable
class SmallColoredText extends StatelessWidget {
  String word = "";
  SmallColoredText(String text, {Key? key}) : super(key: key) {
    word = text;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      style: const TextStyle(color: kColorPrimary, fontSize: 15),
    );
  }
}
