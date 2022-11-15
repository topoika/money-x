import 'package:flutter/material.dart';

import '../components/custom_appbars.dart';

class OrderDetails extends StatefulWidget {
  final String id;
  const OrderDetails({Key? key, required this.id}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "", primary: true),
      body: Container(),
    );
  }
}
