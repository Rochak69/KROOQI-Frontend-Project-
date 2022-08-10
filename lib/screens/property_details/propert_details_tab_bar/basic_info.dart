import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/container_decorations.dart';
import 'package:flutter_application_1/screens/property_details/widgets/details_expansion_tiles.dart';

class BasicInfoTab extends StatefulWidget {
  const BasicInfoTab({Key? key}) : super(key: key);

  @override
  State<BasicInfoTab> createState() => _BasicInfoTabState();
}

class _BasicInfoTabState extends State<BasicInfoTab> {
  bool _customTileExpanded = false;
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

  _buildAgencyBody() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/building.JPG"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text("Landmark Properties"),
                  Text(
                    "Riyadha, Saudi Arabia",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              )
            ],
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Yasar ali"),
            ],
          )
        ],
      ),
    );
  }

  _boxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: topBorderOnly(),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0.0, 0.0), //(x,y)
              blurRadius: 5,
              spreadRadius: 0.001),
        ]);
  }
}
