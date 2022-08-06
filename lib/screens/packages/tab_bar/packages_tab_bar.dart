import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/packages/tab_bar/package_tab_information.dart';
import '../../../constants/theme.dart';

class PackagesTabBar extends StatefulWidget {
  const PackagesTabBar({Key? key}) : super(key: key);

  @override
  State<PackagesTabBar> createState() => _PackagesTabBarState();
}

class _PackagesTabBarState extends State<PackagesTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Basic'),
    Tab(text: 'Premium'),
    Tab(text: "Ultimate"),
    Tab(text: 'Bronze'),
    Tab(text: "Silver"),
  ];

  List<Widget> packagesTiers = [
    const PackageInformation(),
    Container(color: Colors.lightGreen),
    Container(color: Colors.lightBlue),
    Container(color: Colors.pink),
    Container(color: kColorAccent),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildTabBar(), _buildPackagesTiers()],
    );
  }

  _buildTabBar() {
    return TabBar(
      labelColor: kColorPrimary,
      unselectedLabelColor: Colors.grey,
      tabs: myTabs,
      controller: _tabController,
      isScrollable: true,
    );
  }

  _buildPackagesTiers() {
    return SizedBox(
        height: 460,
        child: TabBarView(controller: _tabController, children: packagesTiers));
  }
}
