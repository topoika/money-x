import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../components/drawer.dart';
import '../data/controllers/main_controller.dart';
import 'home.dart';
import 'order_history.dart';

class Pages extends StatefulWidget {
  final int active;
  const Pages({Key? key, required this.active}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends StateMVC<Pages> {
  late int active;
  late MainController con;
  _PagesState() : super(MainController()) {
    con = controller as MainController;
  }
  List<Widget> pages = const [
    HomePage(),
    HomePage(),
    OrderHistoryPage(),
    OrderHistoryPage(),
  ];
  @override
  void initState() {
    super.initState();
    setState(() => active = widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: con.globalScaffoldKey,
      drawer: const DrawerWidget(),
      body: pages[active],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() => active = index);
        },
        currentIndex: active,
        selectedItemColor: Theme.of(context).primaryColor,
        iconSize: 24,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        elevation: 0,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(size: 28),
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined_rounded), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
