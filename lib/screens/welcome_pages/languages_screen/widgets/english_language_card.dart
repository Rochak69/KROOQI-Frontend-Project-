import 'package:flutter/material.dart';

class EnglishLanguageCard extends StatelessWidget {
  const EnglishLanguageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: const [
        CircleAvatar(
            backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/z/united-arab-emirates-flag-waving-fabric-texture-united-arab-emirates-flag-waving-fabric-texture-flag-blowing-wind-154417101.jpg")),
        Padding(padding: EdgeInsets.all(2)),
        Text('Arabic',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
      ]),
      const Icon(Icons.arrow_right_rounded),
    ]));
  }
}
