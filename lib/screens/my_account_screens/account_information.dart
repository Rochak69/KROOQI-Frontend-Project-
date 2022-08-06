import 'package:flutter/material.dart';

import '../../constants/theme.dart';
import '../dashboard_screens/dashboard_screen.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        _buildProfilePicture(),
        const Text("John Mathew", style: TextStyle(color: Colors.white)),
        const Text("sssssss", style: TextStyle(color: Colors.white)),
        _buildPhoneNumber(),
        _buildEmail(),
        const SizedBox(height: 15),
        _buildButton(context),
      ]),
    );
  }

  _buildProfilePicture() {
    return const CircleAvatar(
        radius: 40,
        foregroundImage: NetworkImage(
            "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg"));
  }

  _buildPhoneNumber() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.phone_android_outlined,
          color: Colors.white,
        ),
        Text(
          " +966 987 456 123",
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.edit_attributes_outlined,
          color: kColorPrimary,
        )
      ],
    );
  }

  _buildEmail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.phone_android_outlined,
          color: Colors.white,
        ),
        Text(
          "rochakshrestha666@l.com",
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.edit_attributes_outlined,
          color: kColorPrimary,
        )
      ],
    );
  }

  _buildButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              primary: kColorPrimary,
              onPrimary: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, DashBoard.name);
          },
          child: const Text("Verify")),
    );
  }
}
