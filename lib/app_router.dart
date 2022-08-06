import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/dashboard_screens/dashboard_screen.dart';

import 'package:flutter_application_1/screens/my_account_screens/my_account_screen.dart';

import 'package:flutter_application_1/screens/my_account_screens/settings_screen/faq.dart';
import 'package:flutter_application_1/screens/my_account_screens/settings_screen/privacy_and_policy.dart';

import 'screens/my_account_screens/settings_screen/terms_and_conditions.dart';
import 'screens/screens.dart';

class AppRouter {
  Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.name: ((context) => const SplashScreen()),
    LanguageScreen.name: ((context) => const LanguageScreen()),
    OnBoardingScreen.name: ((context) => const OnBoardingScreen()),
    OnBoardingScreen2.name: ((context) => const OnBoardingScreen2()),
    OnBoardingScreen3.name: ((context) => const OnBoardingScreen3()),
    SignInScreen.name: ((context) => const SignInScreen()),
    OtpVerificationScreen.name: ((context) => const OtpVerificationScreen()),
    DashBoard.name: ((context) => const DashBoard()),
    ProfileScreen.name: ((context) => const ProfileScreen()),
    NotificationScreen.name: ((context) => const NotificationScreen()),
    TotalContactScreen.name: ((context) => const TotalContactScreen()),
    PackagesScreen.name: ((context) => const PackagesScreen()),
    PropertiesScreen.name: ((context) => const PropertiesScreen()),
    EnquriesScreen.name: ((context) => const EnquriesScreen()),
    AgentScreen.name: ((context) => const AgentScreen()),
    PrivacyAndPolicy.name: ((context) => const PrivacyAndPolicy()),
    MyAccountScreen.name: ((context) => const MyAccountScreen()),
    FAQ.name: ((context) => const FAQ()),
    TermsAndConditions.name: ((context) => const TermsAndConditions()),
  };
}
