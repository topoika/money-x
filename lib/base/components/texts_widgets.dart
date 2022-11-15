import 'package:flutter/material.dart';

import '../helper/constants.dart';

Widget atText(BuildContext context, String txt) => Text(
      txt,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          decoration: TextDecoration.underline,
          fontSize: getWidth(context, 3.6),
          letterSpacing: 0,
          fontWeight: FontWeight.w400),
    );

Widget rateText(BuildContext context, String txt, bool black) => Text(
      txt,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headline5!.copyWith(
          fontSize: getWidth(context, 5),
          color: Theme.of(context)
              .textTheme
              .headline5!
              .color!
              .withOpacity(black ? 1 : .5)),
    );
Widget normalText(BuildContext context, String txt, {String type = "normal"}) =>
    Text(
      txt,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0,
            fontSize: getWidth(context, 3),
            color: getColor(type),
          ),
    );
Color getColor(String type) {
  switch (type) {
    case "normal":
      return black.withOpacity(.4);
    case "success":
      return Colors.green;
    case "pending":
      return purple;
    case "canceled":
      return Colors.redAccent;
    default:
      return black.withOpacity(.4);
  }
}
