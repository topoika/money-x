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
    bool? open = await opened();
    open!
        // ignore: use_build_context_synchronously
        ? Navigator.pushReplacementNamed(context, "/Pages")
        // ignore: use_build_context_synchronously
        : Navigator.pushReplacementNamed(context, "/OnBoardingPage");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
