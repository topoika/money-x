import 'package:flutter/material.dart';

import 'views/buy_fiat.dart';
import 'views/buy_one_fiat.dart';
import 'views/login.dart';
import 'views/on_boarding.dart';
import 'views/order_details.dart';
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
      case '/BuyFiatDetails':
        return MaterialPageRoute(builder: (_) => const BuyFiatDetails());
      case '/BuyFiatPage':
        return MaterialPageRoute(builder: (_) => const BuyFiatPage());
      case '/OnBoardingPage':
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case '/RegisterPage':
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case '/OrderDetails':
        return MaterialPageRoute(
            builder: (_) => OrderDetails(id: args as String));
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
