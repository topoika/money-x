
import 'payment_method.dart';
import 'transaction.dart';

class Order {
  int? id;
  Transaction? transaction;
  String? orderNumber;
  PaymentMethod? paymentMethod;
  OrderStatus? orderStatus;
}

class OrderStatus {
  int? id;
  String? name;
  String? description;
  String? icon;
}
