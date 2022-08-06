import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';

class TermsAndConditions extends StatelessWidget {
  static const name = '/s';
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Terms & Conditions"),
        backgroundColor: kColorAccent,
        foregroundColor: Colors.black,
      ),
      backgroundColor: kColorAccent,
      body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
                ),
              ],
            ),
          )),
    );
  }
}
