import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_application_1/Utils/big_text.dart';
import 'package:flutter_application_1/screens/screens.dart';
import 'package:flutter_application_1/screens/welcome_pages/background_image.dart';
import '../../../Utils/container_decorations.dart';
import '../../../constants/theme.dart';

class OnBoardingScreen3 extends StatelessWidget {
  static const name = '335';
  const OnBoardingScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      const BackgroundImage(),
      Positioned(
          top: 530,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: topBorderOnly()),
              child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                  child: Column(children: [
                    const SizedBox(height: 20),
                    _buildTitle(),
                    _buildDescription(),
                    const SizedBox(height: 15),
                    _buildDotsIndicator(),
                    const SizedBox(height: 25),
                    _buildGetStartedButton(context),
                  ]))
              //
              ))
    ]));
  }

  _buildTitle() {
    return Align(
        alignment: Alignment.topLeft, child: BigText("Onboarding Screen 3"));
  }

  _buildDescription() {
    return const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry but also the leap into changed. It was popularised in the 1960s",
      style: TextStyle(fontSize: 17),
    );
  }

  _buildDotsIndicator() {
    return Center(
        child: DotsIndicator(
      dotsCount: 3,
      position: 2,
      decorator: const DotsDecorator(
        activeColor: kColorPrimary,
      ),
    ));
  }
}

_buildGetStartedButton(BuildContext context) {
  return SizedBox(
    height: 50,
    width: 320,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            primary: kColorPrimary,
            onPrimary: Colors.white),
        onPressed: () {
          Navigator.pushNamed(context, SignInScreen.name);
        },
        child: const Text("Get Started")),
  );
}
