import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard_screens/dashboard_gridview/dashboard_gridview_widget.dart';
import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties.dart';
import 'package:flutter_application_1/screens/dashboard_screens/dashboard_gridview/new_message_widget.dart';
import 'package:flutter_application_1/screens/dashboard_screens/recent_enquiries/recent_enquiries_widget.dart';
import 'package:flutter_application_1/widgets/top_bar.dart';

import 'package:flutter_application_1/widgets/bottom_nav_bar.dart';

class DashBoard extends StatefulWidget {
  static const name = '2';
  const DashBoard({Key? key}) : super(key: key);
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopBar(),
      body: SingleChildScrollView(
          child: Column(children: [
        Column(children: [
          Container(
              height: height * 0.47,
              width: width,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: const DashboardGridviewWidget()),
          const NewMessagesWidget(),
          const MostViewedPropertiesWidget(),
        ]),
        const RecentEnquiriesWidget()
      ])),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
