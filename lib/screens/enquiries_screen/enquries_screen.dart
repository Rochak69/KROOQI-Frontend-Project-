import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/container_decorations.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/enquiries_screen/widgets/enquiries_toogle_switch.dart';
import 'package:flutter_application_1/screens/enquiries_screen/widgets/enquiry_details.dart';
import 'package:flutter_application_1/widgets/bottom_nav_bar.dart';
import 'package:flutter_application_1/widgets/top_bar.dart';

class EnquriesScreen extends StatelessWidget {
  static const name = '3';
  const EnquriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorAccent,
      appBar: const TopBar(),
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration:
            BoxDecoration(color: Colors.white, borderRadius: topBorderOnly()),
        child: Column(children: const [
          SizedBox(height: 10),
          EnquiriesToogleSwitch(),
          SizedBox(height: 20),
          EnquiryDetails(),
          SizedBox(height: 20),
          EnquiryDetails(),
          SizedBox(height: 20),
          EnquiryDetails(),
          SizedBox(height: 20),
          EnquiryDetails(),
          SizedBox(height: 20),
          EnquiryDetails(),
        ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}