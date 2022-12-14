import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/property_details/widgets/details_expansion_tiles.dart';

class PropertyAmenities extends StatelessWidget {
  const PropertyAmenities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildFirstRow(),
              const SizedBox(height: 20),
              _buildSecondRow(),
              const SizedBox(height: 20),
              _buildThirdRow(),
            ],
          ),
        ),
        const DetailsExpansionTiles()
      ],
    );
  }

  _buildSingleAmenities(IconData iconData, String text) {
    return Row(children: [
      Icon(
        iconData,
        size: 20,
      ),
      const Padding(padding: EdgeInsets.all(2)),
      Text(
        text,
        style: const TextStyle(fontSize: 13),
      )
    ]);
  }

  _buildFirstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildSingleAmenities(Icons.sunny, "AC"),
        const SizedBox(width: 150),
        _buildSingleAmenities(Icons.sports_gymnastics, "Gym"),
      ],
    );
  }

  _buildSecondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildSingleAmenities(Icons.atm_outlined, "ATM"),
        const SizedBox(width: 140),
        _buildSingleAmenities(Icons.stadium_outlined, "Play Ground"),
      ],
    );
  }

  _buildThirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildSingleAmenities(Icons.family_restroom_outlined, "Rest Room"),
        const SizedBox(width: 100),
        _buildSingleAmenities(Icons.moving_rounded, "Garden"),
      ],
    );
  }
}
