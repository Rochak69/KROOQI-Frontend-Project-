import 'package:flutter/material.dart';
import '../../../constants/theme.dart';
import '../../dashboard_screens/dashboard_screen.dart';

class RenewButton extends StatelessWidget {
  const RenewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: height * 0.06,
          width: width,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(30)),
                  primary: kColorPrimary,
                  onPrimary: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, DashBoard.name);
              },
              child: const Text("Renew Now"))),
    );
  }
}
