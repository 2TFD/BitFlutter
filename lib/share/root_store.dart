import 'package:matule/share/profile_store.dart';
import 'package:mobx/mobx.dart';

part 'root_store.g.dart';

// This is the class used by rest of your codebase
class RootStore = _RootStore with _$RootStore;

// The store-class
abstract class _RootStore with Store {
  @observable
  ObservableList<int> testArray = ObservableList<int>.of([1, 2]);

  final profileDetails = ProfileStore();

  @action
  void increment() {
    testArray.add(0);
  }
}
