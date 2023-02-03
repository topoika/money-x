import 'package:flutter/material.dart';

BoxDecoration decorOne(BuildContext context, double radius, Color? bgColor,
        Color? colorTop, Color? colorBottom) =>
    BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: bgColor ?? Theme.of(context).primaryColor,
      boxShadow: [
        const BoxShadow(
            color: Colors.transparent,
            offset: Offset(-1, -1),
            spreadRadius: 0,
            blurRadius: 0),
        BoxShadow(
            color: Colors.white.withOpacity(.2),
            offset: const Offset(-0.6, -0.6),
            spreadRadius: 0,
            blurRadius: 0),
        BoxShadow(
          blurRadius: 10,
          spreadRadius: -5,
          color: colorBottom ?? Theme.of(context).primaryColor.withOpacity(.6),
          offset: const Offset(13, 14),
        ),
        BoxShadow(
          blurRadius: 12,
          spreadRadius: 0,
          color: colorTop ?? Theme.of(context).scaffoldBackgroundColor,
          offset: const Offset(-5, -5),
        )
      ],
    );

InputDecoration inputDecoration(BuildContext context, String hint, String label,
        bool? secure, Function? onTap) =>
    InputDecoration(
      hintText: hint,
      hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(.4)),
      fillColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(.3),
      filled: true,
      suffixIcon: onTap != null
          ? GestureDetector(
              onTap: () => onTap(),
              child: Icon(
                !secure! ? Icons.visibility_off : Icons.visibility,
                color:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(.6),
              ),
            )
          : const SizedBox(),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide:
            BorderSide(color: Theme.of(context).primaryColor, width: .7),
      ),
    );
InputDecoration amountTextInputDecoration(
        BuildContext context, String hint, label, suffix) =>
    InputDecoration(
      hintText: hint,
      labelText: label,
      suffix: Text(suffix, style: Theme.of(context).textTheme.headline6),
      labelStyle: TextStyle(
          color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500),
      hintStyle: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(color: Theme.of(context).textTheme.headline6!.color),
      fillColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(.3),
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide:
            BorderSide(color: Theme.of(context).primaryColor, width: .7),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide:
            BorderSide(color: Theme.of(context).primaryColor, width: .7),
      ),
    );
