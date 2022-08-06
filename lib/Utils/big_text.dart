import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  String word = "";
  BigText(String text, {Key? key}) : super(key: key) {
    word = text;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
