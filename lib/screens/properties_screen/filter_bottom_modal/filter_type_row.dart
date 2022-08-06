import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard_screens/dashboard_screen.dart';

import '../../../constants/theme.dart';

// ignore: must_be_immutable
class FilterTypeRow extends StatelessWidget {
  String typeName = "";
  String subType1Name = "";
  String subType2Name = "";

  // ignore: use_key_in_widget_constructors
  FilterTypeRow(
    this.typeName,
    this.subType1Name,
    this.subType2Name,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(),
        const SizedBox(height: 5),
        Row(
          children: [
            _buildFilterTextButton(context, subType1Name),
            const SizedBox(width: 10),
            _buildFilterTextButton(context, subType2Name),
            const SizedBox(width: 15),
          ],
        ),
      ],
    );
  }

  _buildTitle() {
    return Align(
        alignment: Alignment.topLeft,
        child: Text(typeName,
            style: const TextStyle(fontWeight: FontWeight.bold)));
  }

  _buildFilterTextButton(BuildContext context, String text) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, DashBoard.name);
      },
      style: TextButton.styleFrom(
          padding: const EdgeInsets.only(left: 20, right: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          side: const BorderSide(color: kColorPrimary)),
      child: Text(
        text,
        style: const TextStyle(color: kColorPrimary),
      ),
    );
  }
}
