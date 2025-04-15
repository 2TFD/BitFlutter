import 'package:matule/share/product_store.dart';
import 'package:matule/share/profile_store.dart';
import 'package:mobx/mobx.dart';

class RootStore with Store {
  final profileDetails = ProfileStore();
  final productDetails = ProductStore();

  static final RootStore _singleton = RootStore._internal();

  factory RootStore() {
    return _singleton;
  }
  RootStore._internal();
}
