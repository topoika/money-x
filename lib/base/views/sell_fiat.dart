import 'package:flutter/material.dart';

import '../components/custom_appbars.dart';
import '../components/custom_tabs.dart';
import '../components/trade_ad_item.dart';
import '../helper/constants.dart';

class SellFiatPage extends StatefulWidget {
  const SellFiatPage({Key? key}) : super(key: key);

  @override
  State<SellFiatPage> createState() => _SellFiatPageState();
}

class _SellFiatPageState extends State<SellFiatPage>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(title: "Sell Fiat", primary: false, action: Icons.add),
      body: ListView(
        shrinkWrap: true,
        primary: false,
        addAutomaticKeepAlives: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(context, 4)),
            child: Transform(
                transform:
                    Matrix4.translationValues(0, getHeight(context, 5.28), 0),
                child: const Divider(
                    indent: 2, height: 1, color: Colors.black12, thickness: 1)),
          ),
          customTabBar(context, tabController!, "USD", "NGN"),
          SizedBox(
            height: getHeight(context, 85),
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return tradeAdItem(context, false);
                    }),
                ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return tradeAdItem(context, false);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
