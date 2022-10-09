import 'package:flutter/material.dart';

import '../helper/constants.dart';
import '../helper/decorations.dart';

Widget mainButton(BuildContext context, String txt, Function? ontap) => InkWell(
      onTap: () => ontap!(),
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: getHeight(context, 2.1)),
        decoration: decorOne(context, 6, null, null, null),
        child: Text(txt,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.white),
            textAlign: TextAlign.center),
      ),
    );
Widget loginButton(
        BuildContext context, String txt, bool? color, Function? ontap) =>
    InkWell(
      onTap: () => ontap!(),
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: getHeight(context, 1.2)),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: getHeight(context, 2.1)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color!
              ? Theme.of(context).scaffoldBackgroundColor
              : Colors.transparent,
          border: Border.all(
              width: .5, color: Theme.of(context).scaffoldBackgroundColor),
        ),
        child: Text(txt,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: color ? Theme.of(context).primaryColor : Colors.white),
            textAlign: TextAlign.center),
      ),
    );

Widget homeButton(
        BuildContext context, String txt, bool color, Function onTap) =>
    GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: getHeight(context, 1.2)),
        alignment: Alignment.center,
        width: getWidth(context, 38),
        padding: EdgeInsets.symmetric(vertical: getHeight(context, 2.1)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: color ? button : white),
        child: Text(txt,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: color ? Colors.white : button),
            textAlign: TextAlign.center),
      ),
    );

Widget smallButton(BuildContext context, String txt, Function ontap) =>
    GestureDetector(
      onTap: () => ontap(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: getHeight(context, 1.2)),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            vertical: getHeight(context, 1), horizontal: getWidth(context, 6)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: button),
        child: Text(txt,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center),
      ),
    );
