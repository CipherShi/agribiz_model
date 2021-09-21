import 'package:model/account.dart';
import 'package:model/location.dart';
import 'package:model/payment.dart';
import 'package:model/products.dart';

class Orders {
  final Account account;
  final DateTime timestamp;
  final List<Products> products;
  final double deliveryFee;
  final double subTotal;
  final double tax;
  final double grandTotal;
  final Payment payment;
  final Location destination;
  final bool fulfilled;

  Orders({
    required this.account,
    required this.timestamp,
    required this.products,
    required this.deliveryFee,
    required this.subTotal,
    required this.tax,
    required this.grandTotal,
    required this.payment,
    required this.destination,
    required this.fulfilled,
  });
}
