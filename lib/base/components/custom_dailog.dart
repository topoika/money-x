import 'package:flutter/material.dart';

import '../helper/constants.dart';

Widget customDialog(BuildContext context, String title, String description,
        String btnTxt, Function? ontap) =>
    Container(
      padding: EdgeInsets.symmetric(vertical: getHeight(context, 2)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cardRadius),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getHeight(context, 1.5),
                horizontal: getWidth(context, 15)),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          const Divider(color: Colors.black12, height: 5, thickness: .5),
          GestureDetector(
            onTap: () => ontap != null ? ontap() : Navigator.pop(context),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: getHeight(context, 1.4)),
                child: Text(btnTxt,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          )
        ],
      ),
    );
