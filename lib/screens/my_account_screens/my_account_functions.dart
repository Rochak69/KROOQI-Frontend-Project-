import 'package:flutter/material.dart';

import '../../Utils/container_decorations.dart';
import 'settings_screen/choose_language_alert_box.dart';
import 'settings_screen/faq.dart';
import 'settings_screen/log_out_pop_up.dart';
import 'settings_screen/privacy_and_policy.dart';
import 'settings_screen/terms_and_conditions.dart';

// ignore: must_be_immutable
class MyAccountFunctions extends StatefulWidget {
  static const name = '3';
  String details = "";
  IconData detailIcon = Icons.edit_off_outlined;

  MyAccountFunctions(String myAccfunctionName, IconData icon, {Key? key})
      : super(key: key) {
    details = myAccfunctionName;
    detailIcon = icon;
  }

  @override
  State<MyAccountFunctions> createState() => _MyAccountFunctionsState();
}

class _MyAccountFunctionsState extends State<MyAccountFunctions> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        _navigate();
      },
      child: Padding(
        padding: EdgeInsets.only(top: width * 0.05),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: shadowedCircularContainer(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(widget.detailIcon),
                const Padding(padding: EdgeInsets.all(5)),
                Text(widget.details),
              ]),
              Row(children: const [Icon(Icons.arrow_right)])
            ],
          ),
        ),
      ),
    );
  }

  _navigate() {
    if (widget.details == "Change Language") {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => const ChooseLanguageAlertBox());
    } else if (widget.details == "FAQ") {
      Navigator.pushNamed(context, FAQ.name);
    } else if (widget.details == "Terms and Conditions") {
      Navigator.pushNamed(context, TermsAndConditions.name);
    } else if (widget.details == "Privacy and Policy") {
      Navigator.pushNamed(context, PrivacyAndPolicy.name);
    } else if (widget.details == "Logout") {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => const LogOutPopUp());
    }
  }
}
