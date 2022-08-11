import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/property_details/details_screen/profile_completion.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../Utils/container_decorations.dart';
import '../../constants/theme.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 250,
      left: 0,
      right: 0,
      child: Container(
        height: 400,
        padding: const EdgeInsets.all(12),
        decoration:
            BoxDecoration(color: Colors.white, borderRadius: topBorderOnly()),
        child: Column(children: [
          _buildTitle(),
          const SizedBox(height: 5),
          _buildLocation(),
          _buildDivider(),
          _buildPropertyType(),
          _buildDivider(),
          _buildProfileCompletionIndicator(),
          const SizedBox(height: 5),
          const ProfileCompletionExpansion()
        ]),
      ),
    );
  }

  _buildTitle() {
    return const Text(
      "Mordern Type Mordern Type Mordern Type ",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  _buildLocation() {
    return Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: const [
            Icon(Icons.location_city_outlined),
            SizedBox(
              width: 5,
            ),
            Text(
              "Riyadha, Saudi Arabia",
              style: (TextStyle(color: Colors.grey, fontSize: 12)),
            ),
          ],
        ));
  }

  _buildDivider() {
    return const Divider(
      height: 20,
      thickness: 2,
    );
  }

  _buildPropertyType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Rent/Residental",
          style: TextStyle(color: kColorPrimary, fontSize: 13),
        ),
        Text(
          "111111111111111",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  _buildProfileCompletionIndicator() {
    return LinearPercentIndicator(
        lineHeight: 10,
        percent: 0.8,
        progressColor: kColorPrimary,
        barRadius: const Radius.circular(25));
  }
}
