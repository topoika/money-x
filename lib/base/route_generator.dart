import 'package:flutter/material.dart';

import 'views/buy_fiat.dart';
import 'views/login.dart';
import 'views/on_boarding.dart';
import 'views/order_history.dart';
import 'views/pages.dart';
import 'views/register.dart';
import 'views/sell_fiat.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/LoginPage':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/Pages':
        return MaterialPageRoute(builder: (_) => const Pages(active: 0));
      case '/OrderHistoryPage':
        return MaterialPageRoute(builder: (_) => const OrderHistoryPage());
      case '/SellFiatPage':
        return MaterialPageRoute(builder: (_) => const SellFiatPage());
      case '/BuyFiatPage':
        return MaterialPageRoute(builder: (_) => const BuyFiatPage());
      case '/OnBoardingPage':
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case '/RegisterPage':
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
