import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class SplashScreen extends StatelessWidget {
  static const name = '/3';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LanguageScreen.name);
            },
            child: SizedBox(
                height: height,
                child: Image.network(
                    "https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/33/f4/fb/33f4fb33-edc0-46db-a5ed-85c949448feb/source/256x256bb.jpg",
                    fit: BoxFit.fill))));
  }
}
