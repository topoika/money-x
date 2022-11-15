import 'package:flutter/material.dart';

import '../components/custom_appbars.dart';
import '../components/order_item.dart';

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
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, "/OrderDetails", arguments: "1"),
              child: orderItem(context));
        },
      ),
    );
  }
}
