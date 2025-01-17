import 'package:flutter/material.dart';
import 'package:stroll/src/config/routes/app_page.dart';
import 'package:stroll/src/modules/home/view.dart';
import 'package:stroll/src/widgets/bottom_nav.dart';

class AppRoute {
  static Route easyAnimationRoute(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Route<dynamic> generalRoute(RouteSettings settings) {
    switch (settings.name) {
      case bottomnavigator:
        return easyAnimationRoute(const CustomBottomNavigation());
      case home:
        return easyAnimationRoute(const Home());
      default:
        return easyAnimationRoute(const Home());
    }
  }
}
