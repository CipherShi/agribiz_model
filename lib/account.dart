import 'package:model/location.dart';
import 'package:model/preferences.dart';
import 'package:model/products.dart';

enum accType {
  business,
  client,
}

class Account {
  final String name;
  final String email;
  final String identification;
  final String phoneNo;
  final String profilePic;
  final String accountType;
  final Location residence;
  final List<Products> shoppingList;
  final List<Products> favourites;
  final AppPreferences preferences;

  Account({
    required this.name,
    required this.email,
    required this.identification,
    required this.phoneNo,
    required this.profilePic,
    required this.accountType,
    required this.residence,
    required this.shoppingList,
    required this.favourites,
    required this.preferences,
  });
}
