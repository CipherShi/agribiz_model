import 'dart:convert';
import 'package:flutter/foundation.dart';

class Products {
  final String name;
  final String category;
  final double price;
  final double quantity;
  final List<String> image;
  final String shopID;
  final List<String> reviews;
  final List<String> keywords;

  Products({
    required this.name,
    required this.category,
    required this.price,
    required this.quantity,
    required this.image,
    required this.shopID,
    required this.reviews,
    required this.keywords,
  });

  Products copyWith({
    String? name,
    String? category,
    double? price,
    double? quantity,
    List<String>? image,
    String? shopID,
    List<String>? reviews,
    List<String>? keywords,
  }) {
    return Products(
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      image: image ?? this.image,
      shopID: shopID ?? this.shopID,
      reviews: reviews ?? this.reviews,
      keywords: keywords ?? this.keywords,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'category': category,
      'price': price,
      'quantity': quantity,
      'image': image,
      'shopID': shopID,
      'reviews': reviews,
      'keywords': keywords,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      name: map['name'],
      category: map['category'],
      price: map['price'],
      quantity: map['quantity'],
      image: List<String>.from(map['image']),
      shopID: map['shopID'],
      reviews: List<String>.from(map['reviews']),
      keywords: List<String>.from(map['keywords']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Products(name: $name, category: $category, price: $price, quantity: $quantity, image: $image, shopID: $shopID, reviews: $reviews, keywords: $keywords)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Products &&
        other.name == name &&
        other.category == category &&
        other.price == price &&
        other.quantity == quantity &&
        listEquals(other.image, image) &&
        other.shopID == shopID &&
        listEquals(other.reviews, reviews) &&
        listEquals(other.keywords, keywords);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        category.hashCode ^
        price.hashCode ^
        quantity.hashCode ^
        image.hashCode ^
        shopID.hashCode ^
        reviews.hashCode ^
        keywords.hashCode;
  }
}
