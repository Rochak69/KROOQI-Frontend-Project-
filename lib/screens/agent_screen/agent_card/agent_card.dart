import 'package:flutter/material.dart';

import '../../welcome_pages/sign_in_screen/sign_in_screen.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignInScreen.name);
      },
      child: Container(
        decoration: _multiColoredContainer(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildProfile(), _buildArabName()],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                _buildBottomIcons(),
                const Padding(padding: EdgeInsets.all(15)),
                _buildBottomIcons(),
                const Padding(padding: EdgeInsets.all(15)),
                _buildBottomIcons()
              ],
            )
          ]),
        ),
      ),
    );
  }

  _buildProfile() {
    return Row(
      children: const [
        CircleAvatar(
          foregroundImage: NetworkImage(
              "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg"),
        ),
        SizedBox(width: 3),
        Text(
          "Nijas Nazar",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  _buildArabName() {
    return Row(
      children: [
        Column(
          children: const [SizedBox(height: 30), Text("AAA")],
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
}
