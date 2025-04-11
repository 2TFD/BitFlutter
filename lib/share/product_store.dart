import 'package:mobx/mobx.dart';

part 'product_store.g.dart';

class ProductStore = _ProductStore with _$ProductStore;

abstract class _ProductStore with Store{

  @observable
  String name = 'username_ivan';

  @action
  void changeName(newname){
    name = newname;
  }
}
