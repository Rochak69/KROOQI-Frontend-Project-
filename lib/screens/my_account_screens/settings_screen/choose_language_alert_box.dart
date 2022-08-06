import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/container_decorations.dart';

class ChooseLanguageAlertBox extends StatefulWidget {
  const ChooseLanguageAlertBox({Key? key}) : super(key: key);
  static const name = '3';
  @override
  State<ChooseLanguageAlertBox> createState() => _ChooseLanguageAlertBoxState();
}

class _ChooseLanguageAlertBoxState extends State<ChooseLanguageAlertBox> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    int? radioValue;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: const Text('Choose your language'),
      content: SizedBox(
        width: width,
        height: height * 0.2,
        child: Column(
          children: [
            _buildLanguage("Arabic", radioValue),
            Padding(padding: EdgeInsets.all(width * 0.02)),
            _buildLanguage("English", 0)
          ],
        ),
      ),
    );
  }

  _buildLanguage(String languageName, int? radioValue) {
    return Container(
        decoration: shadowedCircularContainer(),
        child: ListTile(
            title: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://thumbs.dreamstime.com/z/united-arab-emirates-flag-waving-fabric-texture-united-arab-emirates-flag-waving-fabric-texture-flag-blowing-wind-154417101.jpg")),
                          Text(languageName,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                        ],
                      )
                    ])),
            trailing: Radio(
                value: 1,
                groupValue: 1,
                onChanged: (int? value) {
                  setState(() {
                    radioValue = value;
                  });
                })));
  }
}
