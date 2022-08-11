import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/properties_screen/tab_screens/TabBarContent.dart';
import 'package:flutter_application_1/screens/properties_screen/widgets/top_toogle_switch.dart';
import 'package:flutter_application_1/widgets/floating_action_button.dart';
import 'package:flutter_application_1/widgets/top_bar.dart';
import 'package:provider/provider.dart';
import '../../providers/properties_provider.dart';
import '../../widgets/bottom_nav_bar.dart';

class PropertiesScreen extends StatelessWidget {
  static const name = '/1';
  const PropertiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      backgroundColor: Colors.white,
      floatingActionButton: const FloatingPlusButton(),
      bottomNavigationBar: const BottomNavBar(),
      body: ChangeNotifierProvider(
        create: (context) => Properties(),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 10),
              TopToogleSwitch(),
              SizedBox(
                height: 20,
              ),
              TabBarContent(),
              // MyTabbedPage()
            ],
          ),
        ),
      ),
    );
  }
}
