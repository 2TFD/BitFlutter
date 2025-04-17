// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on _ProductStore, Store {
  late final _$product11Atom =
      Atom(name: '_ProductStore.product11', context: context);

  @override
  ProductEntity get product11 {
    _$product11Atom.reportRead();
    return super.product11;
  }

  @override
  set product11(ProductEntity value) {
    _$product11Atom.reportWrite(value, super.product11, () {
      super.product11 = value;
    });
  }

  late final _$product22Atom =
      Atom(name: '_ProductStore.product22', context: context);

  @override
  ProductEntity get product22 {
    _$product22Atom.reportRead();
    return super.product22;
  }

  @override
  set product22(ProductEntity value) {
    _$product22Atom.reportWrite(value, super.product22, () {
      super.product22 = value;
    });
  }

  late final _$product33Atom =
      Atom(name: '_ProductStore.product33', context: context);

  @override
  ProductEntity get product33 {
    _$product33Atom.reportRead();
    return super.product33;
  }

  @override
  set product33(ProductEntity value) {
    _$product33Atom.reportWrite(value, super.product33, () {
      super.product33 = value;
    });
  }

  late final _$titleAtom = Atom(name: '_ProductStore.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$priceAtom = Atom(name: '_ProductStore.price', context: context);

  @override
  int get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(int value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  late final _$imageUrlAtom =
      Atom(name: '_ProductStore.imageUrl', context: context);

  @override
  String get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_ProductStore.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$_productEntityAtom =
      Atom(name: '_ProductStore._productEntity', context: context);

  @override
  ProductEntity get _productEntity {
    _$_productEntityAtom.reportRead();
    return super._productEntity;
  }

  bool __productEntityIsInitialized = false;

  @override
  set _productEntity(ProductEntity value) {
    _$_productEntityAtom.reportWrite(
        value, __productEntityIsInitialized ? super._productEntity : null, () {
      super._productEntity = value;
      __productEntityIsInitialized = true;
    });
  }

  late final _$_ProductStoreActionController =
      ActionController(name: '_ProductStore', context: context);

  @override
  void main() {
    final _$actionInfo =
        _$_ProductStoreActionController.startAction(name: '_ProductStore.main');
    try {
      return super.main();
    } finally {
      _$_ProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
product11: ${product11},
product22: ${product22},
product33: ${product33},
title: ${title},
price: ${price},
imageUrl: ${imageUrl},
description: ${description}
    ''';
  }
}
