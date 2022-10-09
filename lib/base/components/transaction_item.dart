import 'package:flutter/material.dart';

import '../helper/constants.dart';
import '../helper/decorations.dart';

Widget transactionItem(BuildContext context) => Container(
      decoration: decorOne(context, 6, Colors.white70, white,
          const Color.fromARGB(255, 243, 242, 242)),
      margin: EdgeInsets.symmetric(
          horizontal: getWidth(context, 4), vertical: getHeight(context, 1)),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(context, 2), vertical: getHeight(context, .7)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(user,
                height: getWidth(context, 11),
                width: getWidth(context, 11),
                fit: BoxFit.cover),
          ),
          horiSpace(context, 5),
          SizedBox(
            width: getWidth(context, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'to: ',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .color!
                            .withOpacity(.6)),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Rebbeca Moore',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: getWidth(context, 4.2)),
                      ),
                    ],
                  ),
                ),
                Text(
                  '19 January, 2022',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .color!
                          .withOpacity(.6),
                      fontWeight: FontWeight.w500,
                      fontSize: getWidth(context, 3.8)),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '\$ 125.00',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontSize: getWidth(context, 4.6), fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
