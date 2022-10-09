import 'package:flutter/material.dart';

import '../components/custom_appbars.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHisPageState();
}

class _OrderHisPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Order History", primary: false),
      body: Container(),
    );
  }
}
