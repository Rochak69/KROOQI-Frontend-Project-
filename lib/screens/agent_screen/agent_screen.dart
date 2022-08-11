import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/container_decorations.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/agent_screen/agent_card/agent_card.dart';
import 'package:flutter_application_1/screens/agent_screen/widget/search_bar.dart';
import 'package:flutter_application_1/widgets/floating_action_button.dart';
import 'package:flutter_application_1/widgets/top_bar.dart';
import 'package:provider/provider.dart';

import '../../providers/agents_provider.dart';
import '../../widgets/bottom_nav_bar.dart';

class AgentScreen extends StatelessWidget {
  static const name = '1';
  const AgentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kColorAccent,
      appBar: const TopBar(),
      floatingActionButton: const FloatingPlusButton(),
      body: SingleChildScrollView(
        child: Column(children: [
          _buildTitle(),
          Container(
            padding: EdgeInsets.all(width * 0.06),
            decoration: shadowedCircularContainer(),
            child: Padding(
              padding: EdgeInsets.all(width * 0.02),
              child: Column(
                children: [
                  const SearchBar(),
                  Padding(padding: EdgeInsets.all(height * 0.02)),
                  ChangeNotifierProvider(
                      create: (context) => AgentsProvider(),
                      child: const AgentCard()),
                ],
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  _buildTitle() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      height: 80,
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: const [
            Text(
              "Diamond Package",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Agents(10/15)", style: TextStyle(color: kColorPrimary))
          ],
        ),
      ),
    );
  }
}
