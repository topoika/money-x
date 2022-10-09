import 'package:flutter/material.dart';

import '../components/custom_appbars.dart';

class AdDetailsPage extends StatefulWidget {
  final bool buy;
  const AdDetailsPage({Key? key, required this.buy}) : super(key: key);

  @override
  State<AdDetailsPage> createState() => _AdDetailsPageState();
}

class _AdDetailsPageState extends State<AdDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: widget.buy ? "Buy Fiat" : "Sell Fiat", primary: false),
      body: Container(),
    );
  }
}
