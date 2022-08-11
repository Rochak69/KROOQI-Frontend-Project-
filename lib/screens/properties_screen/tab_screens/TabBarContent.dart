// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';

import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties.dart';

class TabBarContent extends StatefulWidget {
  const TabBarContent({Key? key}) : super(key: key);

  @override
  State<TabBarContent> createState() => _TabBarContentState();
}

class _TabBarContentState extends State<TabBarContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'All(55)'),
    Tab(text: 'Draft/declined'),
    Tab(text: "Pending")
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
      children: [
        _buildTabBar(),
        SizedBox(
          height: 1800,
          child: TabBarView(controller: _tabController, children: const [
            MostViewedPropertiesWidget(),
            MostViewedPropertiesWidget(),
            Text("Pending", style: TextStyle(fontSize: 24))
          ]),
        )
      ],
    );
  }

  // _buildAllProperties() {
  //   return Padding(
  //     padding: const EdgeInsets.all(25.0),
  //     child: Column(
  //       children: const [
  //         SearchBar(),
  //         SizedBox(height: 20),
  //         MostViewedPropertiesTiles(),
  //         SizedBox(height: 20),
  //         MostViewedPropertiesTiles(),
  //         SizedBox(height: 20),
  //         MostViewedPropertiesTiles(),
  //         SizedBox(height: 20),
  //         MostViewedPropertiesTiles(),
  //         SizedBox(height: 20)
  //       ],
  //     ),
  //   );
  // }

  _buildTabBar() {
    return TabBar(
      labelColor: kColorPrimary,
      unselectedLabelColor: Colors.black,
      tabs: myTabs,
      controller: _tabController,
    );
  }
}
