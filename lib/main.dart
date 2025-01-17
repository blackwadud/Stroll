import 'package:flutter/material.dart';
import 'package:stroll/src/config/constants/app_color.dart';
import 'package:stroll/src/config/routes/app_page.dart';
import 'package:stroll/src/config/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stroll',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(AppColor.primaryColor),
        ),
        useMaterial3: true,
      ),
      initialRoute: bottomnavigator,
      onGenerateRoute: AppRoute.generalRoute,
    );
  }
}
