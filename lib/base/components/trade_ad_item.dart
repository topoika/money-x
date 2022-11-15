import 'package:flutter/material.dart';
import 'package:money_exchange/base/components/texts_widgets.dart';

import '../helper/constants.dart';
import '../helper/decorations.dart';
import 'custom_buttons.dart';

Widget tradeAdItem(BuildContext context, bool buy) => Container(
      margin: EdgeInsets.symmetric(
          vertical: getHeight(context, 1), horizontal: getWidth(context, 4)),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(context, 2.5),
          vertical: getHeight(context, 2.5)),
      decoration: decorOne(context, 6, Colors.white70, white,
          const Color.fromARGB(255, 243, 242, 242)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getWidth(context, 65),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    rateText(context, "490 NGN/\$", true),
                    RichText(
                      text: TextSpan(
                        text: 'Limit ',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .color!
                                .withOpacity(.6)),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\$ 100 - \$ 2000',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: black.withOpacity(.5),
                                    fontSize: getWidth(context, 4)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              smallButton(context, buy ? "Buy" : "Sell", () {}),
            ],
          ),
          vertSpace(context, 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              atText(context, "@davidt"),
              RichText(
                text: TextSpan(
                  text: 'Trade score  ',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                      fontSize: getWidth(context, 3),
                      color: black.withOpacity(.4)),
                  children: <TextSpan>[
                    TextSpan(
                      text: '94.72%',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF27AE60),
                          fontSize: getWidth(context, 3)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
