import 'package:flutter/material.dart';
import 'package:money_exchange/base/data/controllers/user_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../data/repository/user_repo.dart';
import '../helper/constants.dart';
import '../helper/decorations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends StateMVC<LoginPage> {
  late UserController con;
  _LoginPageState() : super(UserController()) {
    con = controller as UserController;
  }
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(context, 4),
          vertical: getHeight(context, 5),
        ),
        child: Form(
          key: con.globalFormKey,
          child: Column(
            children: [
              SizedBox(
                width: getWidth(context, 100),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/RegisterPage"),
                  child: Text(
                    "Register",
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
                  "Log in",
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
                  onSaved: (val) => activeUser.value.email = val,
                  validator: (val) {
                    return val!.isEmpty
                        ? "Input an email"
                        : !con.emailValid(val)
                            ? "Input a valid email"
                            : null;
                  },
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  cursorHeight: 21,
                  decoration: inputDecoration(
                      context, "Type email", "Enter your email", secure, null)),
              vertSpace(context, 2.5),
              TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  cursorWidth: 1,
                  obscureText: secure,
                  obscuringCharacter: "●",
                  validator: (val) {
                    return val!.isEmpty
                        ? "Enter a password"
                        : val.length < 6
                            ? "Enter a strong password 6+ "
                            : null;
                  },
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  cursorHeight: 21,
                  decoration: inputDecoration(
                      context, "Password", "●●●●●●", secure, () {
                    setState(() => secure = !secure);
                  })),
              vertSpace(context, 2),
              SizedBox(
                width: getWidth(context, 100),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Retrieve password",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: getWidth(context, 4),
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                ),
              ),
              vertSpace(context, 4),
              Center(
                child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: getHeight(context, 1.2)),
                    padding: EdgeInsets.symmetric(
                        vertical: getHeight(context, 1),
                        horizontal: getWidth(context, 13)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          width: .5,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                    child: Icon(Icons.fingerprint,
                        size: getWidth(context, 8.5),
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(.6))),
              ),
              SizedBox(
                width: getWidth(context, 100),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Log in with fingerprint",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: getWidth(context, 4),
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    if (con.globalFormKey.currentState!.validate()) {
                      con.globalFormKey.currentState!.save();
                      con.login(activeUser.value);
                      Navigator.pushReplacementNamed(context, "/Pages");
                    }
                  },
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
      ),
    );
  }
}
