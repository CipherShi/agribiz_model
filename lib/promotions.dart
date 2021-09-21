import 'package:model/products.dart';

class Promotions {
  final String name;
  final String shopId;
  final Products product;
  final String image;

  Promotions({
    required this.name,
    required this.shopId,
    required this.product,
    required this.image,
  });
}
