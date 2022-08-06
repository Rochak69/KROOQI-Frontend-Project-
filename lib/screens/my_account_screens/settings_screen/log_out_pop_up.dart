import 'package:flutter/material.dart';

import '../../screens.dart';
import 'package:flutter_application_1/constants/theme.dart';

class LogOutPopUp extends StatefulWidget {
  static const name = '3';
  const LogOutPopUp({Key? key}) : super(key: key);

  @override
  State<LogOutPopUp> createState() => _LogOutPopUpState();
}

class _LogOutPopUpState extends State<LogOutPopUp> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        title: _buildTitle(),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNoButton(),
            const Padding(padding: EdgeInsets.all(10)),
            _buildYesButton(),
          ],
        ));
  }

  _buildTitle() {
    return const Text('Are you sure you want to log out?',
        style: TextStyle(fontSize: 16));
  }

  _buildNoButton() {
    return SizedBox(
        height: 40,
        width: 120,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.grey,
                onPrimary: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("No")));
  }

  _buildYesButton() {
    return SizedBox(
      height: 40,
      width: 120,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              primary: kColorPrimary,
              onPrimary: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, SignInScreen.name);
          },
          child: const Text("Yes")),
    );
  }
}
