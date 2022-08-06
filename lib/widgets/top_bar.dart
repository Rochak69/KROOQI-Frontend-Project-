import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_account_screens/my_account_screen.dart';
import '../constants/theme.dart';
import 'package:flutter_application_1/screens/screens.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  static const name = '3';
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        elevation: 0,
        leading: _buildProfileCircleAvatar(context),
        leadingWidth: 60,
        title: _buildTitle(),
        backgroundColor: kColorAccent,
        actions: <Widget>[_buildNotification(context)]);
  }

  _buildProfileCircleAvatar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, MyAccountScreen.name);
        },
        child: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg")),
      ),
    );
  }

  _buildTitle() {
    return const Center(
      child: Image(
          width: 100,
          height: 100,
          image: NetworkImage(
              "https://s.mihnati.com/company_logos/06/79680115395868.jpg")),
    );
  }

  _buildNotification(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignInScreen.name);
      },
      child: const Icon(
        Icons.notification_add_outlined,
        color: Colors.black,
        size: 30,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
