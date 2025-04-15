// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileStore on _ProfileStore, Store {
  late final _$nameAtom = Atom(name: '_ProfileStore.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$lastnameAtom =
      Atom(name: '_ProfileStore.lastname', context: context);

  @override
  String get lastname {
    _$lastnameAtom.reportRead();
    return super.lastname;
  }

  @override
  set lastname(String value) {
    _$lastnameAtom.reportWrite(value, super.lastname, () {
      super.lastname = value;
    });
  }

  late final _$addressAtom =
      Atom(name: '_ProfileStore.address', context: context);

  @override
  String get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$numberAtom =
      Atom(name: '_ProfileStore.number', context: context);

  @override
  String get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(String value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  late final _$_userEntityAtom =
      Atom(name: '_ProfileStore._userEntity', context: context);

  @override
  UserEntity get _userEntity {
    _$_userEntityAtom.reportRead();
    return super._userEntity;
  }

  bool __userEntityIsInitialized = false;

  @override
  set _userEntity(UserEntity value) {
    _$_userEntityAtom.reportWrite(
        value, __userEntityIsInitialized ? super._userEntity : null, () {
      super._userEntity = value;
      __userEntityIsInitialized = true;
    });
  }

  late final _$_itemEntityAtom =
      Atom(name: '_ProfileStore._itemEntity', context: context);

  @override
  ItemEntity get _itemEntity {
    _$_itemEntityAtom.reportRead();
    return super._itemEntity;
  }

  bool __itemEntityIsInitialized = false;

  @override
  set _itemEntity(ItemEntity value) {
    _$_itemEntityAtom.reportWrite(
        value, __itemEntityIsInitialized ? super._itemEntity : null, () {
      super._itemEntity = value;
      __itemEntityIsInitialized = true;
    });
  }

  late final _$_ProfileStoreActionController =
      ActionController(name: '_ProfileStore', context: context);

  @override
  void main() {
    final _$actionInfo =
        _$_ProfileStoreActionController.startAction(name: '_ProfileStore.main');
    try {
      return super.main();
    } finally {
      _$_ProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeName(dynamic newvalue) {
    final _$actionInfo = _$_ProfileStoreActionController.startAction(
        name: '_ProfileStore.changeName');
    try {
      return super.changeName(newvalue);
    } finally {
      _$_ProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changelastname(dynamic newvalue) {
    final _$actionInfo = _$_ProfileStoreActionController.startAction(
        name: '_ProfileStore.changelastname');
    try {
      return super.changelastname(newvalue);
    } finally {
      _$_ProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeaddress(dynamic newvalue) {
    final _$actionInfo = _$_ProfileStoreActionController.startAction(
        name: '_ProfileStore.changeaddress');
    try {
      return super.changeaddress(newvalue);
    } finally {
      _$_ProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changenumber(dynamic newvalue) {
    final _$actionInfo = _$_ProfileStoreActionController.startAction(
        name: '_ProfileStore.changenumber');
    try {
      return super.changenumber(newvalue);
    } finally {
      _$_ProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
lastname: ${lastname},
address: ${address},
number: ${number}
    ''';
  }
}
