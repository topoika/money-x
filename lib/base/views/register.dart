import 'package:flutter/material.dart';

import '../helper/constants.dart';
import '../helper/decorations.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool secure = true;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(context, 4),
          vertical: getHeight(context, 5),
        ),
        child: Column(
          children: [
            SizedBox(
              width: getWidth(context, 100),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/LoginPage"),
                child: Text(
                  "Log in",
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: getWidth(context, 4),
                      color: Theme.of(context).accentColor),
                ),
              ),
            ),
            vertSpace(context, 10),
            SizedBox(
              width: getWidth(context, 100),
              child: Text(
                "Register",
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: getWidth(context, 5),
                    color: Theme.of(context).scaffoldBackgroundColor),
              ),
            ),
            vertSpace(context, 3),
            SizedBox(
              width: getWidth(context, 100),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Use phone number",
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: getWidth(context, 4),
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
              ),
            ),
            vertSpace(context, 2),
            TextFormField(
                cursorColor: Theme.of(context).primaryColor,
                cursorWidth: 1,
                autocorrect: true,
                autofillHints: const ["email"],
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Theme.of(context).scaffoldBackgroundColor),
                cursorHeight: 21,
                decoration: inputDecoration(
                    context, "Type email", "Enter your email", secure, null)),
            vertSpace(context, 2.5),
            TextFormField(
                cursorColor: Theme.of(context).primaryColor,
                cursorWidth: 1,
                obscureText: secure,
                obscuringCharacter: "●",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Theme.of(context).scaffoldBackgroundColor),
                cursorHeight: 21,
                decoration:
                    inputDecoration(context, "Password", "●●●●●●", secure, () {
                  setState(() => secure = !secure);
                })),
            vertSpace(context, 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                    shape: const CircleBorder(),
                    tristate: false,
                    value: checked,
                    activeColor: Colors.white,
                    onChanged: (val) {
                      setState(() => checked = !checked);
                    }),
                Text(
                  "I agree to Gpeer’s ",
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: getWidth(context, 4),
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
                Text(
                  " Terms of Use",
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: getWidth(context, 4),
                      color: Theme.of(context).accentColor),
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => Navigator.pushReplacementNamed(context, "/Pages"),
                child: Container(
                    padding: EdgeInsets.all(getWidth(context, 4)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xFF140F26).withOpacity(.5),
                    ),
                    child: Icon(Icons.arrow_forward_ios,
                        size: getWidth(context, 5),
                        color: Theme.of(context).scaffoldBackgroundColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
