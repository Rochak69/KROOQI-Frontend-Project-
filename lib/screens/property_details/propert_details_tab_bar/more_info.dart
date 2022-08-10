import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/property_details/widgets/details_expansion_tiles.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfo(),
                SizedBox(
                  height: 30,
                ),
                _buildInfo(),
                SizedBox(
                  height: 30,
                ),
                _buildInfo2()
              ],
            )),
        DetailsExpansionTiles()
      ],
    );
  }

  _buildInfo() {
    return Column(
      children: const [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Property Title",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Text("This is the property title"))
      ],
    );
  }

  _buildInfo2() {
    return Column(
      children: const [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Property Title",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Text(
                "This is the property title This is the property title This is the property title This is the property title This is the property title This is the property title This is the property title This is the property title"))
      ],
    );
  }
}
