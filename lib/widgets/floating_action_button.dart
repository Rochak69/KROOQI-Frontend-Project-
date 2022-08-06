import 'package:flutter/material.dart';
import '../constants/theme.dart';
import '../screens/my_account_screens/my_account_screen.dart';

class FloatingPlusButton extends StatelessWidget {
  const FloatingPlusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, MyAccountScreen.name);
      },
      backgroundColor: kColorPrimary,
      child: const Icon(Icons.add),
    );
  }
}
