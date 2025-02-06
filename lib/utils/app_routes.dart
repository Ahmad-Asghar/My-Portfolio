import 'package:flutter/material.dart';
import 'package:my_portfolio/views/home/screens/landing_page.dart';

class AppRoutes {

  static const String landingPage = '/';

  static Map<String, WidgetBuilder> get routes => {

    landingPage: (_) => const LandingPage(),

  };
}
