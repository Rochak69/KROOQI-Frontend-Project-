import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class ArabicLanguageCard extends StatelessWidget {
  const ArabicLanguageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 15.0),
        child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, OnBoardingScreen.name);
            },
            child: Card(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Row(children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/11/06/13/29/union-jack-1027898_960_720.jpg"),
                    ),
                    Padding(padding: EdgeInsets.only(left: 2)),
                    Text(
                      'English',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )
                  ]),
                  const Icon(Icons.arrow_right_rounded),
                ]))));
  }
}
