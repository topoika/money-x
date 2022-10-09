import 'package:flutter/material.dart';

import '../helper/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  bool? primary = true;
  IconData? action;
  CustomAppBar({Key? key, this.title, this.primary, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? "",
        style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
              color: !primary!
                  ? Theme.of(context).appBarTheme.iconTheme!.color
                  : Theme.of(context).primaryColor,
            ),
      ),
      centerTitle: true,
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios,
            color: !primary!
                ? Theme.of(context).appBarTheme.iconTheme!.color
                : Theme.of(context).primaryColor,
            size: 18),
        onTap: () => Navigator.pop(context),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(context, 4)),
          child: action != null
              ? Icon(action,
                  color: !primary!
                      ? Theme.of(context).appBarTheme.iconTheme!.color
                      : Theme.of(context).primaryColor,
                  size: 24)
              : const SizedBox(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
}
