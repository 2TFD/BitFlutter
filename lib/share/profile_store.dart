import 'package:mobx/mobx.dart';

part 'profile_store.g.dart';

class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store{

  @observable
  String name = 'username_ivan';

  @action
  void changeName(newname){
    name = newname;
  }
}
