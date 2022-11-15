import 'package:flutter/material.dart';
import 'package:money_exchange/base/data/repository/settings_repository.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() async {
    await opened().then((value) => Navigator.pushReplacementNamed(
        context, !value! ? "/Pages" : "/OnBoardingPage"));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
