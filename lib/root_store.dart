import 'package:mobx/mobx.dart';

// Include generated file
// part 'todos.g.dart';
part 'root_store.g.dart';

// This is the class used by rest of your codebase
class RootStore = _RootStore with _$RootStore;

// The store-class
abstract class _RootStore with Store {
  _RootStore(this.description);

  @observable
  String description = '';

  @observable
  bool done = false;
}