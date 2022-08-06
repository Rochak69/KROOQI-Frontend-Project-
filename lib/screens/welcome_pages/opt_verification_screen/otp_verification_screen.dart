import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/dashboard_screens/dashboard_screen.dart';
import 'package:flutter_application_1/screens/welcome_pages/background_image.dart';
import 'package:flutter_application_1/screens/welcome_pages/opt_verification_screen/opt_code_text_field_widget.dart';

import '../../../Utils/big_text.dart';
import '../../../Utils/container_decorations.dart';

class OtpVerificationScreen extends StatelessWidget {
  static const name = 'ASDas';
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: kColorAccent,
          title: const Text("Verify", style: TextStyle(color: Colors.black)),
        ),
        body: Stack(children: [
          const BackgroundImage(),
          Positioned(
              top: 350,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: topBorderOnly()),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        BigText("Verify your account"),
                        const SizedBox(height: 5),
                        const Text(
                            "A verification code has been sent to your phone number, type the verification code recieved and verify"),
                        const SizedBox(height: 15),
                        const OtpCodeTextFiled(),
                        const SizedBox(height: 15),
                        _buildCodeExpireTime(),
                        const SizedBox(height: 20),
                        _buildButton(context),
                        const Padding(padding: EdgeInsets.all(10)),
                        _buildBottomText()
                      ])))
        ]));
  }

  _buildCodeExpireTime() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Text("Code will expire on",
          style: TextStyle(fontWeight: FontWeight.bold)),
      Padding(padding: EdgeInsets.all(2)),
      Text("0:22", style: TextStyle(color: kColorPrimary))
    ]);
  }

  _buildButton(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 50,
          width: 320,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  primary: kColorPrimary,
                  onPrimary: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, DashBoard.name);
              },
              child: const Text("Verify"))),
    );
  }

  _buildBottomText() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Text("Didn't recieve the code?"),
      Text('Resend Code', style: TextStyle(color: kColorPrimary))
    ]);
  }
}
