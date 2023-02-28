import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';
import '../repository/user_repo.dart';
import 'main_controller.dart';

class UserController extends MainController {
  void login(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (user.email != null) {
      prefs.setString("user", json.encode(user.toMap()));
      activeUser.value = user;
    }
    log(json.encode(user.toMap()));
  }

  void logOut(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("user");
    Navigator.pushReplacementNamed(context, "/LoginPage");
    activeUser.dispose();
  }
}
