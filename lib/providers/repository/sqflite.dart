import 'dart:async';

import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'sqflite.g.dart';

@Riverpod(keepAlive: true)
Future<Database> sqflite(
  SqfliteRef ref,
) async {
  return openDatabase(
    join(await getDatabasesPath(), 'meshx.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE text_messages (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'text TEXT, toNode INTEGER, fromNode INTEGER, channel INTEGER, '
        'time INTEGER, state INTEGER, packetId INTEGER)',
      );
    },
    version: 1,
  );
}
