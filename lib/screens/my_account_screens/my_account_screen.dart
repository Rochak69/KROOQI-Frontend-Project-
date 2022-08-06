import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/my_account_screens/account_information.dart';
import 'my_account_functions.dart';
import 'edit_agency_details.dart';
import '../../widgets/bottom_nav_bar.dart';

class MyAccountScreen extends StatelessWidget {
  static const name = 'ii';
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: kColorAccent,
          foregroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          title: const Text("My Account")),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          _buildBackgroundImage(context),
          const AccountInformation(),
          Positioned(
              top: height * 0.31,
              child: Container(
                  padding: EdgeInsets.all(width * 0.08),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  height: height,
                  width: width,
                  child: Column(
                    children: [
                      const EditAgencyDetails(),
                      MyAccountFunctions(
                          "Change Language", Icons.language_outlined),
                      MyAccountFunctions("FAQ", Icons.format_quote_outlined),
                      MyAccountFunctions(
                          "Terms and Conditions", Icons.book_outlined),
                      MyAccountFunctions(
                          "Privacy and Policy", Icons.shield_outlined),
                      MyAccountFunctions("Logout", Icons.shield_outlined),
                    ],
                  ))),
        ],
      )),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  _buildBackgroundImage(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
        height: height,
        child: Image.network(
            "https://cdn.pixabay.com/photo/2017/05/04/16/40/dubai-2284506_960_720.jpg",
            fit: BoxFit.cover));
  }
}
