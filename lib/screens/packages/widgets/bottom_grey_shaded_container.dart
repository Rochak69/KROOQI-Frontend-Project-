import 'package:flutter/material.dart';

class BottomGreyShadedContainer extends StatelessWidget {
  const BottomGreyShadedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xfff9f9f9),
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Properties", style: TextStyle(color: Colors.grey)),
                Text("2/6",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                Text("Agent accounts", style: TextStyle(color: Colors.grey)),
                Text("Videos", style: TextStyle(color: Colors.grey))
              ]),
        ]));
  }
}
