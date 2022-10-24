import 'package:flutter/material.dart';
import 'package:newsjunkie/screen/news_item_screen/news_item_screen.dart';

class LeagueScreenArgs {
  final String leagueId;

  LeagueScreenArgs({this.leagueId = ""});
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case NewsItemScreen.routeName:
          return MaterialPageRoute(
            builder: (_) => const NewsItemScreen(),
          );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}
