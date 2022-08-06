import 'package:flutter/material.dart';

import 'dashboard_tiles.dart';

class DashboardGridviewWidget extends StatelessWidget {
  const DashboardGridviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 1.05,
        padding: const EdgeInsets.all(15),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        primary: false,
        children: [
          DashboardTiles(Icons.home_outlined, "70", "Total Views"),
          DashboardTiles(Icons.contact_mail_outlined, "170", "Total Contacts"),
          DashboardTiles(Icons.house_outlined, "70/75", "Published Properties"),
          DashboardTiles(
              Icons.pie_chart_outline_outlined, "45%", "Average Listings"),
        ]);
  }
}
