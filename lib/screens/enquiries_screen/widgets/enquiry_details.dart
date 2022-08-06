import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/small_colored_text.dart';
import 'package:flutter_application_1/constants/theme.dart';

class EnquiryDetails extends StatelessWidget {
  const EnquiryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: _enquiryContainerDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCircleAvatar(),
            const SizedBox(width: 10),
            _buildName(),
            _buildSmallWhiteContainer()
          ],
        ));
  }

  _enquiryContainerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: kColorPrimary,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0.0, 0.0), //(x,y)
            blurRadius: 5,
            spreadRadius: 0.001),
      ],
    );
  }

  _buildCircleAvatar() {
    return const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://image.shutterstock.com/image-vector/logistic-other-ways-logo-template-600w-1984526201.jpg"),
    );
  }

  _buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Codeware labs Codeware ", style: TextStyle(color: Colors.white)),
        SizedBox(height: 1),
        Text(
          "Rochak Shrestha",
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ],
    );
  }

  _buildSmallWhiteContainer() {
    return Container(
      height: 20,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Center(child: SmallColoredText("2/5")),
    );
  }
}
