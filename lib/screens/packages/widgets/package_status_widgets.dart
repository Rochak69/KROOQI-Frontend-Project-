import 'package:flutter/material.dart';

///
class PackageTypeWidgets extends StatelessWidget {
  const PackageTypeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Text(
        "Premium",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff4ebf41),
        ),
        child: const Text(
          "Active",
          style: TextStyle(color: Colors.white),
        ),
      )
    ]);
  }
}
