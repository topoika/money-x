import 'package:flutter/material.dart';

import '../helper/constants.dart';

Widget atText(
        BuildContext context, String txt, bool underLined, double percentage) =>
    Text(
      txt,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headline6!.copyWith(
          decoration:
              underLined ? TextDecoration.underline : TextDecoration.none,
          fontSize: getWidth(context, percentage),
          letterSpacing: 0,
          fontWeight: FontWeight.w400),
    );
Widget limitText(BuildContext context, String txt1, String txt2) => RichText(
      text: TextSpan(
        text: txt1,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color:
                Theme.of(context).textTheme.bodyText1!.color!.withOpacity(.6)),
        children: <TextSpan>[
          TextSpan(
            text: txt2,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w500,
                color: black.withOpacity(.5),
                fontSize: getWidth(context, 4)),
          ),
        ],
      ),
    );
Widget rateText(BuildContext context, String txt, bool black, bool bold) =>
    Text(
      txt,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headline5!.copyWith(
          fontSize: getWidth(context, bold ? 6 : 5),
          fontWeight: bold ? FontWeight.w800 : null,
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

Widget smallText(BuildContext context, String text, double font,
        {FontWeight fontWeight = FontWeight.w400}) =>
    Text(
      text,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
          color: Theme.of(context).textTheme.bodyText2!.color!.withOpacity(.6),
          fontWeight: fontWeight,
          fontSize: getWidth(context, font)),
    );
