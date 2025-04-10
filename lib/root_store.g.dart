// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RootStore on _RootStore, Store {
  late final _$testArrayAtom =
      Atom(name: '_RootStore.testArray', context: context);

  @override
  ObservableList<int> get testArray {
    _$testArrayAtom.reportRead();
    return super.testArray;
  }

  @override
  set testArray(ObservableList<int> value) {
    _$testArrayAtom.reportWrite(value, super.testArray, () {
      super.testArray = value;
    });
  }

  late final _$_RootStoreActionController =
      ActionController(name: '_RootStore', context: context);

  @override
  void increment() {
    final _$actionInfo =
        _$_RootStoreActionController.startAction(name: '_RootStore.increment');
    try {
      return super.increment();
    } finally {
      _$_RootStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
testArray: ${testArray}
    ''';
  }
}
