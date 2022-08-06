import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: Image.network(
          "https://www.krooqi.com/_next/static/images/spotlight-1-19b43e0e286ca0a3c3e97cdea2239e41.jpg",
          fit: BoxFit.cover),
    );
  }
}
