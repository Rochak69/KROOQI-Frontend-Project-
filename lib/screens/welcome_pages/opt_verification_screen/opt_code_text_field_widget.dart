import 'package:flutter/material.dart';

class OtpCodeTextFiled extends StatelessWidget {
  const OtpCodeTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      _buildTextField(),
      const SizedBox(width: 20),
      _buildTextField(),
      const SizedBox(width: 20),
      _buildTextField(),
      const SizedBox(width: 20),
      _buildTextField(),
      const SizedBox(width: 20)
    ]);
  }

  _buildTextField() {
    return Flexible(
        child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)))));
  }
}
