import 'package:flutter/material.dart';

import '../helper/constants.dart';

Widget customTabBar(BuildContext context, TabController controller, String txt,
        String txt1) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        horiSpace(context, 6),
        SizedBox(
          width: getWidth(context, 30),
          child: TabBar(
            controller: controller,
            indicatorColor: Theme.of(context).accentColor,
            labelStyle: Theme.of(context).textTheme.bodyText1,
            indicatorWeight: 2.8,
            indicatorPadding:
                EdgeInsets.symmetric(horizontal: getWidth(context, 2)),
            labelColor: Theme.of(context).textTheme.bodyText1!.color,
            unselectedLabelColor:
                Theme.of(context).textTheme.bodyText1!.color!.withOpacity(.5),
            tabs: [
              Tab(text: txt),
              Tab(text: txt1),
            ],
          ),
        ),
      ],
    );
