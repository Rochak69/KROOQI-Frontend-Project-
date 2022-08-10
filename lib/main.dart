import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_router.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/dashboard_screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: themedata,
        initialRoute: DashBoard.name,
        routes: AppRouter().routes);
  }
}
