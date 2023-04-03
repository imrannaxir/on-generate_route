import 'package:flutter/material.dart';
import 'package:on_generate_route/route_names.dart';

import 'error_screen.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.firstScreen:
        return MaterialPageRoute(builder: (context) {
          return const FirstScreen();
        });
      case RouteNames.secondScreen:
        return MaterialPageRoute(builder: (context) {
          return SecondScreen(data: settings.arguments as Map);
        });
      case RouteNames.thirdScreen:
        return MaterialPageRoute(builder: (context) {
          return ThirdScreen(data: settings.arguments as Map);
        });

      default:
        return MaterialPageRoute(builder: (context) {
          return ErrorScreen(data: settings.arguments as Map);
        });
    }
  }
}
