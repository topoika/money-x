import 'package:shared_preferences/shared_preferences.dart';

Future<bool?> opened() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.containsKey("opened")
      ? preferences.getBool("opened")
      : false;
}

Future<void> setOpened() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("opened", true);
}
