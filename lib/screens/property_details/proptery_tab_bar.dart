import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/container_decorations.dart';
import 'package:flutter_application_1/screens/property_details/propert_details_tab_bar/activities.dart';
import 'package:flutter_application_1/screens/property_details/propert_details_tab_bar/amenities.dart';
import 'package:flutter_application_1/screens/property_details/propert_details_tab_bar/basic_info.dart';
import 'package:flutter_application_1/screens/property_details/propert_details_tab_bar/more_info.dart';
import '../../../constants/theme.dart';

class PropertyTabBar extends StatefulWidget {
  int defaultIndex;
  PropertyTabBar(this.defaultIndex, {Key? key}) : super(key: key);

  @override
  State<PropertyTabBar> createState() => _PropertyTabBarState(defaultIndex);
}

class _PropertyTabBarState extends State<PropertyTabBar>
    with SingleTickerProviderStateMixin {
  int defaultIndex;
  _PropertyTabBarState(this.defaultIndex, {Key? key});

  late TabController _tabController;
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Basic info'),
    Tab(text: 'More info'),
    Tab(text: "Amenities"),
    Tab(text: 'Activities'),
  ];

  List<Widget> packagesTiers = [
    const BasicInfoTab(),
    const MoreInfo(),
    const PropertyAmenities(),
    const ActivitiesTab()
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this, length: myTabs.length, initialIndex: defaultIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 450,
      right: 0,
      left: 0,
      child: Column(
        children: [
          Container(
              decoration: shadowedCircularContainer(),
              width: 400,
              child: _buildTabBar()),
          _buildPackagesTiers()
        ],
      ),
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
        height: 5000,
        child: TabBarView(controller: _tabController, children: packagesTiers));
  }
}
