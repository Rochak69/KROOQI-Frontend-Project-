import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/property_details/widgets/details_expansion_tiles.dart';

class ActivitiesTab extends StatelessWidget {
  const ActivitiesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            _buildInfo(),
            const SizedBox(height: 30),
            _buildInfo(),
            const SizedBox(height: 30),
            _buildActivities(),
            const SizedBox(height: 10),
            _buildActivities(),
            const SizedBox(height: 10),
            _buildActivities(),
            const SizedBox(height: 10),
            _buildActivities(),
            const SizedBox(height: 10),
          ]),
        ),
        const DetailsExpansionTiles()
      ],
    );
  }

  _buildInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Created Date",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text("10/01/2021 10:00 AM",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Published Date",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              "10/01/2021 10:00 AM",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        )
      ],
    );
  }

  _buildActivities() {
    return Row(
      children: [
        Icon(
          Icons.check_circle_outline,
          size: 40,
        ),
        SizedBox(
          width: 20,
        ),
        Flexible(
            child: Text(
          "Mohamend Aslam created a new propert in the town Houston. Texts",
          style: TextStyle(fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
