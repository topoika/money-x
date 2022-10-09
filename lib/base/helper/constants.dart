import 'package:flutter/material.dart';

double getWidth(BuildContext context, double percentage) =>
    (MediaQuery.of(context).size.width * percentage) / 100;
double getHeight(BuildContext context, double percentage) =>
    (MediaQuery.of(context).size.height * percentage) / 100;

Widget vertSpace(BuildContext context, double percentage) =>
    SizedBox(height: getHeight(context, percentage));
Widget horiSpace(BuildContext context, double percentage) =>
    SizedBox(width: getWidth(context, percentage));

Color purple = const Color(0xFF613EEA);
Color button = const Color(0xFF4C28D7);
Color black = Colors.black;
Color white = Colors.white;
double cardRadius = 13;
double inputRadius = 4;

//ASSETS//
// images//
String done = "assets/img/done.png";
String user = "assets/img/user.png";
// icons//
