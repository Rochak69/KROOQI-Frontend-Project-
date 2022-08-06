import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/big_text.dart';
import 'package:flutter_application_1/Utils/small_colored_text.dart';

import '../../../Utils/container_decorations.dart';
import '../../welcome_pages/sign_in_screen/sign_in_screen.dart';

class NewMessagesWidget extends StatelessWidget {
  const NewMessagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, SignInScreen.name);
        },
        child: Container(
            margin: const EdgeInsets.all(16),
            padding: EdgeInsets.only(
                top: width * 0.04, left: width * 0.08, bottom: width * 0.04),
            height: height * 0.109,
            decoration: shadowedCircularContainer(),
            child: _buildNewMessages()));
  }

  Row _buildNewMessages() {
    return Row(children: [
      const Icon(
        Icons.message_outlined,
        size: 60,
      ),
      const Padding(padding: EdgeInsets.all(2)),
      Column(children: [BigText("10/12"), SmallColoredText("New Messages")])
    ]);
  }
}
