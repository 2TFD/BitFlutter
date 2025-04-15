import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:matule/cards/product_card.dart';
import 'package:matule/entity/item_entity.dart';
import 'package:matule/entity/product_entity.dart';

final item = ItemEntity(name: 'name', colorItem: 'colorItem');

class UserEntity extends Equatable {
  UserEntity({
    required this.name,
    required this.lastname,
    required this.address,
    required this.number,
    required this.item,
    this.items,
    this.basket,
  });

  String name;
  String lastname;
  String address;
  String number;
  ItemEntity item;
  List<ItemEntity>? items = [];
  List<ProductEntity>? basket = [];

  @override
  List<Object> get props => [name, lastname];

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      name: json['name'],
      lastname: json['lastname'],
      address: json['addres'],
      number: json['number'],
      item: ItemEntity.fromJson(json['item']),
      items:
          (json['items'] as List<dynamic>).map((e) {
            return ItemEntity.fromJson(jsonDecode(e));
          }).toList(),
      basket: (json['basket'] as List<dynamic>).map((e) {
        return ProductEntity.fromJson(jsonDecode(e));
      }).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'name': this.name,
    'lastname': this.lastname,
    'addres': this.address,
    'number': this.number,
    'item': this.item.toJson(),
    'items':
        this.items!.map((toElement) {
          return jsonEncode(toElement.toJson());
        }).toList(),
  };
}

void main() {
  final user = UserEntity(
    name: 'name',
    lastname: 'lastname',
    address: 'address',
    number: 'number',
    item: item,
    items: [item, item, item],
  );

  print(user.toJson());
  final jsonUser = jsonEncode(user.toJson());
  print(jsonUser);
  final encode = jsonDecode(jsonUser);
  print(encode);
  print(UserEntity.fromJson(encode));
  print(UserEntity.fromJson(encode).item);
  print(UserEntity.fromJson(encode).items);

  // print(jsonDecode(jsonUser));
}
