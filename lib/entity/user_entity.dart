import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  UserEntity({
    required this.name,
    required this.lastname,
    required this.address,
    required this.number,
  });
  String name;
  String lastname;
  String address;
  String number;

  @override
  List<Object> get props => [name, lastname];
}

void main() {
  UserEntity user1 = UserEntity(
    name: 'name',
    lastname: 'lastname',
    address: 'address',
    number: 'number',
  );
  UserEntity user2 = UserEntity(
    name: 'name',
    lastname: 'lastname',
    address: 'address',
    number: 'number',
  );

  print(user1 == user2);
}
