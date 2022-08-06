import 'package:flutter/material.dart';
import '../../../constants/theme.dart';

class ResetApplyButtons extends StatelessWidget {
  const ResetApplyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [_buildResetButton(context), _buildYesButton(context)],
    );
  }

  _buildYesButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 130,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              primary: kColorPrimary,
              onPrimary: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Apply")),
    );
  }

  _buildResetButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 130,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(30)),
              primary: Colors.grey,
              onPrimary: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Reset")),
    );
  }
}
