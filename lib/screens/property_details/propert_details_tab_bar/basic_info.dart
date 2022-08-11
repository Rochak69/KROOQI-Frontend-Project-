import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/property_details/widgets/details_expansion_tiles.dart';

class BasicInfoTab extends StatefulWidget {
  const BasicInfoTab({Key? key}) : super(key: key);

  @override
  State<BasicInfoTab> createState() => _BasicInfoTabState();
}

class _BasicInfoTabState extends State<BasicInfoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 16),
      child: Column(children: [
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        _buildInfo(),
        const SizedBox(height: 30),
        const DetailsExpansionTiles()
      ]),
    );
  }

  _buildInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Text(
              "Property id",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              "KROOQI-13",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Column(
          children: const [
            Text(
              "Property id",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              "KROOQI-13",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
