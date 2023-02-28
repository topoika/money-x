import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../components/custom_buttons.dart';
import '../components/transaction_item.dart';
import '../data/controllers/home_controller.dart';
import '../helper/constants.dart';
import '../helper/decorations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StateMVC<HomePage> with TickerProviderStateMixin {
  late HomeController con;
  _HomePageState() : super(HomeController()) {
    con = controller as HomeController;
  }
  bool visible = true;
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  NumberFormat currencyFormat = NumberFormat.compactSimpleCurrency(
      locale: "en", name: "USD", decimalDigits: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: con.globalScaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () =>
                Scaffold.of(con.globalScaffoldKey.currentContext!).openDrawer(),
            child: const Icon(Icons.notes_outlined)),
        title: const SizedBox(),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(context, 4)),
              child: const Icon(Icons.notifications_on_sharp)),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        primary: false,
        addAutomaticKeepAlives: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(context, 4)),
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(context, 5),
                vertical: getHeight(context, 2.3)),
            decoration:
                decorOne(context, 6, purple, white, purple.withOpacity(.5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Dollar wallet',
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: white.withOpacity(.9),
                                  ),
                            ),
                            horiSpace(context, 2),
                            GestureDetector(
                                onTap: () => setState(() => visible = !visible),
                                child: Icon(
                                    visible
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    color: white.withOpacity(.6),
                                    size: getWidth(context, 3.5))),
                          ],
                        ),
                        vertSpace(context, .7),
                        Text(
                          visible
                              ? currencyFormat.format(14599.56)
                              : "\$ ❁ ❁ ❁ ❁",
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: white.withOpacity(.9),
                                  fontSize: getWidth(context, 7)),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        //todo: remove this
                        Navigator.pushNamed(context, "/OrderHistoryPage");
                      },
                      child: Icon(
                        Icons.account_balance_wallet_outlined,
                        color: white.withOpacity(.7),
                        size: getWidth(context, 7),
                      ),
                    ),
                  ],
                ),
                vertSpace(context, 1.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    homeButton(context, "Buy", false,
                        () => Navigator.pushNamed(context, "/BuyFiatPage")),
                    homeButton(context, "Sell", true,
                        () => Navigator.pushNamed(context, "/SellFiatPage")),
                  ],
                ),
              ],
            ),
          ),
          vertSpace(context, 3.4),
          SizedBox(
            height: getHeight(context, 100),
            child: ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: getWidth(context, 4)),
                  child: Text(
                    'Transaction details',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: getWidth(context, 5),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                vertSpace(context, 2.5),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: getWidth(context, 4)),
                  child: Transform(
                      transform: Matrix4.translationValues(
                          0, getHeight(context, 5.28), 0),
                      child: const Divider(
                          indent: 2,
                          height: 1,
                          color: Colors.black12,
                          thickness: 1)),
                ),
                SizedBox(
                  width: getWidth(context, 100),
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Theme.of(context).accentColor,
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                    indicatorWeight: 2.8,
                    indicatorPadding:
                        EdgeInsets.symmetric(horizontal: getWidth(context, 10)),
                    labelColor: Theme.of(context).textTheme.bodyText1!.color,
                    unselectedLabelColor: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color!
                        .withOpacity(.5),
                    tabs: const [
                      Tab(text: "Bought"),
                      Tab(text: "Sold"),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(context, 50),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const ScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return transactionItem(context);
                        }),
                      ),
                      ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const ScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return transactionItem(context);
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
