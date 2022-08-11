import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/property.dart';

class ApartmentLocationAndPrice extends StatelessWidget {
  ApartmentLocationAndPrice(this.properties, this.index, {Key? key})
      : super(key: key);
  List<Property> properties;
  int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.location_city_outlined),
            Text(
              properties[index].location,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
        Row(
          children: [
            const Text("SAR", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(properties[index].price,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text("/mo", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }
}
