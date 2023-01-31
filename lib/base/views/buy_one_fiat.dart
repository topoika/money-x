import 'package:flutter/material.dart';

import '../components/custom_appbars.dart';
import '../components/texts_widgets.dart';
import '../helper/constants.dart';

class BuyFiatDetails extends StatefulWidget {
  const BuyFiatDetails({super.key});

  @override
  State<BuyFiatDetails> createState() => _BuyFiatDetailsState();
}

class _BuyFiatDetailsState extends State<BuyFiatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Buy Fiat", primary: false, action: null),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(context, 4), vertical: getWidth(context, 2)),
        children: <Widget>[
          atText(context, "Exchange rate", false, 3.6),
          const SizedBox(height: 7),
          rateText(context, "490 NGN/\$", true, true),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: getWidth(context, 2.4),
            ),
            child: limitText(context, 'Limit ', '\$ 100 - \$ 2000'),
          )
        ],
      ),
    );
  }
}
