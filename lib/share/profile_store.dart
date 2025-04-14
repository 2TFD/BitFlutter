import 'package:matule/entity/user_entity.dart';
import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store {
  @observable
  String name = 'name';
  @observable
  String lastname = 'lastname';
  @observable
  String address = 'address';
  @observable
  String number = 'phone num';

  @observable
  late UserEntity _userEntity;

  @action
  void main() {
    _userEntity = UserEntity(
      name: name,
      lastname: lastname,
      address: address,
      number: number,
    );
  }

  @action
  void changeName(newvalue) {
    name = newvalue;
  }

  @action
  void changelastname(newvalue) {
    lastname = newvalue;
  }

  @action
  void changeaddress(newvalue) {
    address = newvalue;
  }

  @action
  void changenumber(newvalue) {
    number = newvalue;
  }
}
