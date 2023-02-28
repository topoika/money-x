import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../data/controllers/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends StateMVC<SplashScreen> {
  late SplashController con;
  _SplashScreenState() : super(SplashController()) {
    con = controller as SplashController;
  }
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() async {
    await con
        .isLoggedIn()
        .then((value) => Navigator.pushReplacementNamed(context, value));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
