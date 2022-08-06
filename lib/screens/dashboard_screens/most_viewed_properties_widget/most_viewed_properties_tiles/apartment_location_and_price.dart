import 'package:flutter/material.dart';

class ApartmentLocationAndPrice extends StatelessWidget {
  const ApartmentLocationAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.location_city_outlined),
            Text(
              "Riyadh, Saudi Arabia",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        Row(
          children: const [
            Text("SAR", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(" 628,900",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("/mo", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }
}
