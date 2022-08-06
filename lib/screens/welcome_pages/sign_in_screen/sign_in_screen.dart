import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/welcome_pages/background_image.dart';
import 'package:flutter_application_1/screens/welcome_pages/sign_in_screen/select_country_phone_number.dart';
import '../../../Utils/big_text.dart';
import '../../../Utils/container_decorations.dart';
import '../../screens.dart';

class SignInScreen extends StatelessWidget {
  static const name = '/2';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kColorAccent,
            title: const Text("Sign In", style: TextStyle(color: Colors.black)),
            iconTheme: const IconThemeData(color: Colors.black)),
        body: Stack(children: [
          const BackgroundImage(),
          Positioned(
              top: 350,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: topBorderOnly()),
                  child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(children: [
                        const SizedBox(height: 2),
                        _buildTitle(),
                        const SizedBox(height: 10),
                        _buildSubTitle(),
                        const SizedBox(height: 25),
                        _buildPhoneNumber(),
                        const SizedBox(height: 5),
                        const SelectCountryPhoneNumber(),
                        const SizedBox(height: 40),
                        _buildButton(context),
                        const SizedBox(height: 20),
                        _buildBottomText()
                      ]))))
        ]));
  }

  _buildTitle() {
    return Align(
        alignment: Alignment.topLeft, child: BigText("Welcome to KROOQIO"));
  }

  _buildSubTitle() {
    return const Align(
        alignment: Alignment.topLeft,
        child: Text("Sign in/Sign up with your Phone number",
            style: TextStyle(fontSize: 15)));
  }

  _buildPhoneNumber() {
    return const Align(
        alignment: Alignment.topLeft,
        child: Text("Phone Number", style: TextStyle(fontSize: 15)));
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
                Navigator.pushNamed(context, OtpVerificationScreen.name);
              },
              child: const Text("Sign In"))),
    );
  }

  _buildBottomText() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Text("Don't have an account?"),
      Text("Sign Up", style: TextStyle(color: kColorPrimary))
    ]);
  }
}
