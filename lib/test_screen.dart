import 'package:flutter/material.dart';
import 'package:flutter_orm/flutter_orm.dart';
import 'package:matule/database/note.dart';
import 'package:matule/database/note_db.dart';
import 'package:matule/database/db_builder.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
 late NoteDB noteDB;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _initDB();
  }

  void _initDB() {
    DBContext.getNoteDB().then((db) {
      noteDB = db;
      _insertMockNote().then((_) {
        Future.delayed(const Duration(seconds: 3)).then((value) {
          setState(() {
            _initialized = true;
          });
        });
      });
    });
  }

  Future<void> _insertMockNote() async {
    int count = await noteDB.noteDao().count() ?? 0;
    if (count > 0) return;
    DateTime now = DateTime.now();
    await noteDB.noteDao().insert(Note(
          text: 'Mock Note 1',
          createDate: now,
          isEdited: false,
        ));
    await noteDB.noteDao().bulkInsert([
      Note(
        text: 'Mock Note 1',
        createDate: now,
        isEdited: false,
      ),
      Note(
        text: 'Mock Note 2',
        createDate: now,
        isEdited: false,
      ),
      Note(
        text: 'Mock Note 3(Embedded)',
        createDate: now,
        isEdited: false,
      ),
    ]);
    print('mock notes inserted');
    await noteDB.noteDao().bulkUpdate([
      Note(
        id: 1,
        text: 'Mock Note 1 edited',
        latitude: 1.1,
        createDate: now,
        updateDate: DateTime.now(),
        isEdited: true,
      ),
      Note(
        id: 2,
        text: 'Mock Note 2 edited',
        latitude: 1.2,
        createDate: now,
        updateDate: DateTime.now(),
        isEdited: true,
      ),
    ]);
    print('mock notes updated');
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
    
  }
}
