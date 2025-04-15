import 'package:matule/entity/product_entity.dart';
import 'package:mobx/mobx.dart';

part 'product_store.g.dart';

class ProductStore = _ProductStore with _$ProductStore;

abstract class _ProductStore with Store {
  @observable
  final product11 = ProductEntity(
    title: 'nike',
    price: 700,
    imageUrl: 'http://1img',
    description: 'description',
  );
  @observable
  final product22 = ProductEntity(
    title: 'nike2',
    price: 701,
    imageUrl: 'http://2img',
    description: 'description',
  );
  @observable
  final product33 = ProductEntity(
    title: 'nike3',
    price: 703,
    imageUrl: 'http://3img',
    description: 'description',
  );

  @observable
  String title = '';
  @observable
  int price = 1;
  @observable
  String imageUrl = '';
  @observable
  String description = '';

  @observable
  late ProductEntity _productEntity;

  @action
  void main() {
    _productEntity = ProductEntity(
      title: title,
      price: price,
      imageUrl: imageUrl,
      description: description,
    );
  }
}
