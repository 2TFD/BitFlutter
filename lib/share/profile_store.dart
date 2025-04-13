import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store{

  @observable
  String name = 'name';
  String lastname = 'lastname';
  String address = 'address';
  String number = 'phone num';
  

  @action
  void changeName(newvalue){
    name = newvalue;
  }
  @action
  void changelastname(newvalue){
    lastname = newvalue;
  }
  @action
  void changeaddress(newvalue){
    address = newvalue;
  }
  @action
  void changenumber(newvalue){
    number = newvalue;
  }

}
