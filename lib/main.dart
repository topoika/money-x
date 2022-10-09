import 'package:flutter/material.dart';

import 'base/helper/theme.dart';
import 'base/route_generator.dart';
import 'base/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money X',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: lightTheme(),
      home: const SplashScreen(),
    );
  }
}
