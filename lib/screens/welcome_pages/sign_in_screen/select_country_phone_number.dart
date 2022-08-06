import 'package:flutter/material.dart';

class SelectCountryPhoneNumber extends StatelessWidget {
  const SelectCountryPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: Card(
            child: Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20.0), //or 15.0
              child: SizedBox(
                  width: 60,
                  child: Image.network(
                      "https://thumbs.dreamstime.com/z/united-arab-emirates-flag-waving-fabric-texture-united-arab-emirates-flag-waving-fabric-texture-flag-blowing-wind-154417101.jpg"))),
          const Text("+966",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          const VerticalDivider(width: 10, thickness: 1, color: Colors.grey),
          const Flexible(
              child: TextField(
                  decoration:
                      InputDecoration(hintText: "Enter your phone number")))
        ])));
  }
}
