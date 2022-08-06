import 'package:flutter/material.dart';
import '../../screens.dart';
import '../../../constants/theme.dart';

// ignore: must_be_immutable
class FiltersCard extends StatelessWidget {
  static const name = '3';
  String filterBy = "";
  String filterValue = "";

  FiltersCard(String fliterName, String currentFilter, {Key? key})
      : super(key: key) {
    filterBy = fliterName;
    filterValue = currentFilter;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignInScreen.name);
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(width * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildFliterSettings(),
            _buildArrowRight(),
          ],
        ),
      ),
    );
  }

  _buildFliterSettings() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(children: [
        Text(
          filterBy,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          filterValue,
          style: const TextStyle(color: kColorPrimary),
        )
      ]),
    );
  }

  _buildArrowRight() {
    return Row(
      children: const [Icon(Icons.arrow_right)],
    );
  }
}
