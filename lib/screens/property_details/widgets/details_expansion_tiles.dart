import 'package:flutter/material.dart';
import '../../../Utils/container_decorations.dart';

class DetailsExpansionTiles extends StatefulWidget {
  const DetailsExpansionTiles({Key? key}) : super(key: key);

  @override
  State<DetailsExpansionTiles> createState() => _DetailsExpansionTilesState();
}

class _DetailsExpansionTilesState extends State<DetailsExpansionTiles> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: _boxDecoration(),
          child: ExpansionTile(
            childrenPadding: const EdgeInsets.all(10),
            title: const Text(
              'Floor Plans',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: [
              _buildFloorPlan(),
              const SizedBox(
                height: 10,
              ),
              _buildFloorPlan(),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
        ),
        Container(
          decoration: _boxDecoration(),
          child: ExpansionTile(
            title: const Text(
              'Agency Details',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: [_buildAgencyBody()],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
        ),
      ],
    );
  }

  _buildAgencyBody() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/building.JPG"),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: const [
                  Text("Landmark Properties"),
                  Text(
                    "Riyadha, Saudi Arabia",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              )
            ],
          ),
          const Divider(
            height: 25,
            thickness: 1,
          ),
          Row(
            children: const [
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

  _buildFloorPlan() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: shadowedCircularContainer(),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: const Image(
              height: 85, image: AssetImage("assets/property3.jpg")),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Title",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "2D",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          width: 75,
        ),
        Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            Text(
              "Title",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text("1111111")
          ],
        )
      ]),
    );
  }
}
