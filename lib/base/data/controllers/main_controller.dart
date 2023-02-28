import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MainController extends ControllerMVC {
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> globalScaffoldKey = GlobalKey<ScaffoldState>();
  bool emailValid(val) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(val);
}
