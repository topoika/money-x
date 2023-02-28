import 'package:shared_preferences/shared_preferences.dart';

Future<void> setOpened() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("opened", true);
}
