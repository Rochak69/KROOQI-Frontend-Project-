import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/container_decorations.dart';
import 'package:flutter_application_1/constants/theme.dart';
import '../../dashboard_screens/dashboard_screen.dart';

class PackageInformation extends StatelessWidget {
  const PackageInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: kColorPrimary, borderRadius: topBorderOnly()),
      child: Column(children: [
        const SizedBox(height: 30),
        _buildTitle(),
        _buildDivider(),
        _buildDeveloper(),
        _buildDivider(),
        _buildInformation("5 Properties"),
        _buildInformation("* Agent Accounts"),
        _buildInformation("Duration -12 months"),
        _buildInformation("1 videos project "),
        const SizedBox(height: 30),
        _buildButton(context)
      ]),
    );
  }

  _buildTitle() {
    return Column(
      children: const [
        Text(
          "250",
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
        ),
        Text(
          "Price",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }

  _buildDivider() {
    return const Divider(
      indent: 40,
      endIndent: 40,
      thickness: 1,
      height: 35,
      color: Colors.white,
    );
  }

  _buildDeveloper() {
    return const Text(
      "Developer",
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }

  _buildInformation(String info) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.check,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Text(
          info,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }

  _buildButton(BuildContext context) {
    return SizedBox(
      height: 57,
      width: 310,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              primary: Colors.white,
              onPrimary: kColorPrimary),
          onPressed: () {
            Navigator.pushNamed(context, DashBoard.name);
          },
          child: const Text("Verify")),
    );
  }
}
