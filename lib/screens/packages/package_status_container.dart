import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/packages/widgets/bottom_grey_shaded_container.dart';
import 'package:flutter_application_1/screens/packages/widgets/package_price.dart';
import 'package:flutter_application_1/screens/packages/widgets/package_status_widgets.dart';
import 'package:flutter_application_1/screens/packages/widgets/renew_button.dart';
import '../../Utils/container_decorations.dart';
import '../../constants/theme.dart';

class PackageStatusContainer extends StatelessWidget {
  const PackageStatusContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: shadowedCircularContainer(),
        child: Column(children: [
          const PackageTypeWidgets(),
          _buildpackageHolder(),
          _buildhoriontalDivider(),
          const PackagePriceWidget(),
          const SizedBox(height: 2),
          const BottomGreyShadedContainer(),
          const RenewButton(),
        ]));
  }

  _buildpackageHolder() {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          color: const Color(0xfffaebd7),
          child: const Text("Agent Package",
              style: TextStyle(color: kColorPrimary)),
        ));
  }

  _buildhoriontalDivider() {
    return const Padding(
        padding: EdgeInsets.only(top: 7, bottom: 7),
        child: DottedLine(dashColor: Colors.grey, direction: Axis.horizontal));
  }
}
