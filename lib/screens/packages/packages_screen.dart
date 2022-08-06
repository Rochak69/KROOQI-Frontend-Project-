import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/packages/package_status_container.dart';
import 'package:flutter_application_1/screens/packages/tab_bar/packages_tab_bar.dart';
import 'package:flutter_application_1/screens/packages/toogle_switch.dart';
import 'package:flutter_application_1/widgets/top_bar.dart';
import '../../widgets/bottom_nav_bar.dart';

class PackagesScreen extends StatelessWidget {
  static const name = '8';

  const PackagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.all(18),
              child: Column(children: [
                _buildTitle(),
                const SizedBox(height: 15),
                const PackageStatusContainer(),
                const SizedBox(height: 20),
                const PackageToogleSwitch(),
                const PackagesTabBar()
              ]))
        ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  _buildTitle() {
    return const Align(
        alignment: Alignment.topLeft,
        child: Text("Active packages",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)));
  }
}
