import 'package:flutter/material.dart';

class PackagePriceWidget extends StatelessWidget {
  const PackagePriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(children: const [
        Text("Price", style: TextStyle(color: Colors.grey)),
        Text("SAR 299",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
      ]),
      Column(children: const [
        Text("Expiry Date", style: TextStyle(color: Colors.grey)),
        Text("10/08/2016",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
      ])
    ]);
  }
}
