import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';
import '../repository/user_repo.dart';
import 'main_controller.dart';

class SplashController extends MainController {
  Future<String> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isloggedIn = prefs.containsKey("user");
    var opened = prefs.containsKey("opened");
    log(isloggedIn.toString());
    if (isloggedIn && opened) {
      activeUser.value = User.fromMap(json.decode(prefs.getString("user")!));
      return "/Pages";
    } else if (!isloggedIn && opened) {
      return "/LoginPage";
    } else {
      return "/OnBoardingPage";
    }
  }
}
