import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:money_exchange/base/views/home.dart';
import 'package:money_exchange/base/views/order_history.dart';

class Pages extends StatefulWidget {
  final int active;
  const Pages({Key? key, required this.active}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  late int active;
  List<Widget> pages = const [
    HomePage(),
    OrderHistoryPage(),
    HomePage(),
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
          BottomNavigationBarItem(icon: Icon(Icons.filter_3), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("FloatingActionButton pressed");
        },
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
