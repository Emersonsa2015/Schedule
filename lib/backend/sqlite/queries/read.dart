import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN LISTAR
Future<List<ListarRow>> performListar(
  Database database,
) {
  const query = '''
SELECT*FROM Tree
''';
  return _readQuery(database, query, (d) => ListarRow(d));
}

class ListarRow extends SqliteRow {
  ListarRow(super.data);

  int? get id => data['id'] as int?;
  String? get ordem => data['Ordem'] as String?;
  String? get descricao => data['Descricao'] as String?;
}

/// END LISTAR
