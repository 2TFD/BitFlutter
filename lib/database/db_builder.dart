import 'package:flutter_orm/annotations/db_annotations.dart';
import 'package:matule/database/note_db.dart';

part 'db_builder.dbbuilder.dart';

@DBBuilder(databases: [NoteDB])
abstract class DatabaseBuilder {}