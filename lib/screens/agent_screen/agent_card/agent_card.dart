import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../models/agent.dart';
import '../../../models/providers/agents_provider.dart';
import '../../welcome_pages/sign_in_screen/sign_in_screen.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final agentsData = Provider.of<AgentsProvider>(context);
    final agents = agentsData.items;

    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: agents.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignInScreen.name);
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: _multiColoredContainer(),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildProfile(agents, index),
                      _buildArabName(agents, index)
                    ],
                  ),
                  const SizedBox(height: 40),
                  _buildThreeBottomIcons()
                ]),
              ));
        });
  }

  _buildProfile(List<Agent> agents, int index) {
    return Row(
      children: [
        CircleAvatar(
          foregroundImage: NetworkImage(agents[index].imageUrl),
        ),
        const SizedBox(width: 3),
        Text(
          agents[index].name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  _buildArabName(List<Agent> agents, int index) {
    return Row(
      children: [
        Column(
          children: [const SizedBox(height: 30), Text(agents[index].urduName)],
        )
      ],
    );
  }

  _multiColoredContainer() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
      gradient: const LinearGradient(
        colors: [
          Colors.white,
          Colors.white,
          Color(0xfff7f7f7),
          Color(0xfff7f7f7),
        ],
        stops: [0.6, 0.1, 0.1, 1.0],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        transform: null,
      ),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0.0, 1.0), //(x,y)
            blurRadius: 10,
            spreadRadius: 0.1),
      ],
    );
  }

  _buildBottomIcons() {
    return Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Row(children: const [
        Icon(Icons.house_outlined),
        Padding(padding: EdgeInsets.all(2)),
        Text("20")
      ]),
    );
  }

  _buildThreeBottomIcons() {
    return Row(
      children: [
        _buildBottomIcons(),
        const Padding(padding: EdgeInsets.all(15)),
        _buildBottomIcons(),
        const Padding(padding: EdgeInsets.all(15)),
        _buildBottomIcons()
      ],
    );
  }
}
