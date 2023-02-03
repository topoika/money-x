import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import '../components/custom_appbars.dart';
import '../components/custom_buttons.dart';
import '../components/texts_widgets.dart';
import '../helper/constants.dart';
import '../helper/decorations.dart';

class BuyFiatDetails extends StatefulWidget {
  const BuyFiatDetails({super.key});

  @override
  State<BuyFiatDetails> createState() => _BuyFiatDetailsState();
}

class _BuyFiatDetailsState extends State<BuyFiatDetails> {
  TextEditingController ngn = TextEditingController();
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
          ),
          const SizedBox(height: 7),
          smallText(context, "Transaction details", 3.2,
              fontWeight: FontWeight.w400),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              keyboardType: TextInputType.number,
              inputFormatters: [
                MoneyInputFormatter(
                    thousandSeparator: ThousandSeparator.Comma,
                    
                    mantissaLength: 0)
              ],
              cursorWidth: 1,
              onChanged: (val) {
                var value = double.tryParse(val);
                if (value != null) {
                  value = value * 490;
                  setState(() {
                    ngn.text = value!.toStringAsFixed(2).toString();
                  });
                } else {
                  ngn.clear();
                }
              },
              autocorrect: true,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).textTheme.headline1!.color),
              cursorHeight: 21,
              decoration:
                  amountTextInputDecoration(context, "Amount", "Amount", "\$"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              inputFormatters: [MoneyInputFormatter()],
              cursorColor: Theme.of(context).primaryColor,
              keyboardType: TextInputType.number,
              cursorWidth: 1,
              autocorrect: true,
              controller: ngn,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).textTheme.headline1!.color),
              cursorHeight: 21,
              decoration:
                  amountTextInputDecoration(context, "Amount", "Amount", "NGN"),
            ),
          ),
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: mainButton(context, "Review", () {}),
          ),
        ],
      ),
    );
  }
}
