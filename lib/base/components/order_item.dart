import 'package:flutter/material.dart';

import '../helper/constants.dart';
import '../helper/decorations.dart';
import 'texts_widgets.dart';

Widget orderItem(BuildContext context) => Container(
      margin: EdgeInsets.symmetric(
          vertical: getHeight(context, 1), horizontal: getWidth(context, 4)),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(context, 2.5),
          vertical: getHeight(context, 2.5)),
      decoration: decorOne(context, 6, Colors.white70, white,
          const Color.fromARGB(255, 243, 242, 242)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  normalText(context, 'Buy order'),
                  vertSpace(context, 0.6),
                  rateText(context, 'N35,500', true),
                ],
              ),
              rateText(context, '@  N 490/\$', false),
            ],
          ),
          vertSpace(context, .76),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              atText(context, "@davidt"),
              normalText(context, 'Pending', type: "pending"),
            ],
          )
        ],
      ),
    );
