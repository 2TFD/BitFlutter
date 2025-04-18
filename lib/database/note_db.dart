import 'package:flutter/material.dart';
import 'package:flutter_orm/flutter_orm.dart';
import 'package:matule/database/note.dart';
import 'package:matule/database/note_dao.dart';
import 'package:sqflite/sqflite.dart';

part 'note_db.db.dart';

@DB(
  name: 'note_db',
  version: 1,
  readOnly: false,
  singleInstance: true,
  entities: [Note],
)
abstract class NoteDB {
  NoteDao noteDao();

  @OnUpgrade()
  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    print('onUpgrade');
  }

  @OnDowngrade()
  Future<void> onDowngrade(Database db, int oldVersion, int newVersion) async {
    print('onDowngrade');
  }

  @OnConfigure()
  Future<void> onConfigure(Database db) async {
    db.execute('PRAGMA foreign_keys = ON;');
    print('onConfigure');
  }

  @OnOpen()
  Future<void> onOpen(Database db) async {
    print('onOpen');
  }
}