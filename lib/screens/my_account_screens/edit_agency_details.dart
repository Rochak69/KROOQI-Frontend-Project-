import 'package:flutter/material.dart';
import '../../Utils/container_decorations.dart';
import '../screens.dart';
import 'package:flutter_application_1/constants/theme.dart';

class EditAgencyDetails extends StatelessWidget {
  static const name = '3';
  const EditAgencyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignInScreen.name);
      },
      child: Container(
        decoration: shadowedCircularContainer(),
        child: Container(
          padding: EdgeInsets.all(width * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.mode_edit_rounded),
                const Padding(padding: EdgeInsets.all(5)),
                Column(children: const [
                  Text("Edit Agency Details"),
                  Text("Update Agency details",
                      style: TextStyle(color: kColorPrimary))
                ]),
              ]),
              Row(
                children: const [Icon(Icons.arrow_right)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
