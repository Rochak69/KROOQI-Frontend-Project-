import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/big_text.dart';
import 'package:flutter_application_1/screens/welcome_pages/background_image.dart';
import 'package:flutter_application_1/screens/welcome_pages/languages_screen/widgets/arabic_language_card.dart';
import 'package:flutter_application_1/screens/welcome_pages/languages_screen/widgets/english_language_card.dart';

import '../../../Utils/container_decorations.dart';

class LanguageScreen extends StatelessWidget {
  static const name = "asd";
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(children: [
      const BackgroundImage(),
      Positioned(
          top: 515,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: topBorderOnly(), color: Colors.white),
              child: Column(children: [
                SizedBox(height: height * 0.06),
                _buildTitle(),
                SizedBox(height: height * 0.055),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 38.0),
                    child: EnglishLanguageCard()),
                const ArabicLanguageCard()
              ])))
    ]));
  }

  _buildTitle() {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(15)),
        BigText("Choose your language")
      ],
    );
  }
}
