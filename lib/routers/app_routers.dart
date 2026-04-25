import 'package:flutter/material.dart';
import '../pages/home/home_page.dart';
import '../pages/activity/activity_page.dart';
import '../pages/profile/profile_page.dart';

class AppRoutes {
  static const home = '/';
  static const activity = '/activity';
  static const profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    activity: (context) => const ActivityPage(),
    profile: (context) => const ProfilePage(),
  };
}