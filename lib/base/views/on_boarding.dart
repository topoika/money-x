import 'package:flutter/material.dart';
import 'package:money_exchange/base/data/repository/settings_repo.dart';

import '../components/custom_buttons.dart';
import '../helper/constants.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int active = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: screens.length, vsync: this);
    _tabController!
        .addListener(() => setState(() => active = _tabController!.index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(context, 5.5),
          vertical: getHeight(context, 5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _tabController!.index != screens.length - 1
                ? SizedBox(
                    width: getWidth(context, 100),
                    child: GestureDetector(
                      onTap: () => setState(
                          () => _tabController!.index = screens.length - 1),
                      child: Text(
                        "Skip",
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: getWidth(context, 4.4),
                            color: Theme.of(context).accentColor),
                      ),
                    ),
                  )
                : SizedBox(),
            SizedBox(
              height: getHeight(context,
                  _tabController!.index == screens.length - 1 ? 62 : 80),
              child: TabBarView(
                controller: _tabController,
                children: List.generate(
                  screens.length,
                  (index) {
                    _tabController!.addListener(() {});
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(screens[index]["image"],
                            height: getHeight(context, 50)),
                        const Spacer(),
                        Center(
                          child: Text(
                            screens[index]["desc"],
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: getWidth(context, 4),
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: getWidth(context, 20),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  labelColor: Theme.of(context).buttonColor,
                  unselectedLabelColor:
                      Theme.of(context).shadowColor.withOpacity(.4),
                  tabs: List.generate(screens.length, (index) {
                    return Tab(
                      icon: active == index
                          ? Icon(
                              Icons.mode_standby_outlined,
                              size: getWidth(context, 3.5),
                              color: Colors.white,
                            )
                          : Icon(
                              Icons.circle,
                              size: getWidth(context, 1.5),
                              color: Theme.of(context)
                                  .scaffoldBackgroundColor
                                  .withOpacity(.6),
                            ),
                    );
                  }),
                ),
              ),
            ),
            _tabController!.index == screens.length - 1
                ? loginButton(
                    context,
                    "Create account",
                    true,
                    () => {
                          setOpened(),
                          Navigator.pushReplacementNamed(
                              context, "/RegisterPage")
                        })
                : const SizedBox(),
            _tabController!.index == screens.length - 1
                ? loginButton(
                    context,
                    "Log in",
                    false,
                    () => {
                          setOpened(),
                          Navigator.pushReplacementNamed(context, "/LoginPage"),
                        })
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  List screens = [
    {
      "image": done,
      "desc":
          "Negative or white space has the same\nimportance as the text and images on\nthe layout. One"
    },
    {
      "image": done,
      "desc":
          "Negative or white space has the same\nimportance as the text and images on\nthe layout. Two"
    },
    {
      "image": done,
      "desc":
          "Negative or white space has the same\nimportance as the text and images on\nthe layout. Three"
    },
    {
      "image": done,
      "desc":
          "Negative or white space has the same\nimportance as the text and images on\nthe layout. Four"
    },
  ];
}
