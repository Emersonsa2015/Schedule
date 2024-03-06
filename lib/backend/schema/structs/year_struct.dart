// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class YearStruct extends FFFirebaseStruct {
  YearStruct({
    String? tipo,
    String? tree1,
    int? week,
    String? descricao,
    String? imagem,
    DocumentReference? idNotes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tipo = tipo,
        _tree1 = tree1,
        _week = week,
        _descricao = descricao,
        _imagem = imagem,
        _idNotes = idNotes,
        super(firestoreUtilData);

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;
  bool hasTipo() => _tipo != null;

  // "tree1" field.
  String? _tree1;
  String get tree1 => _tree1 ?? '';
  set tree1(String? val) => _tree1 = val;
  bool hasTree1() => _tree1 != null;

  // "week" field.
  int? _week;
  int get week => _week ?? 0;
  set week(int? val) => _week = val;
  void incrementWeek(int amount) => _week = week + amount;
  bool hasWeek() => _week != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;
  bool hasImagem() => _imagem != null;

  // "idNotes" field.
  DocumentReference? _idNotes;
  DocumentReference? get idNotes => _idNotes;
  set idNotes(DocumentReference? val) => _idNotes = val;
  bool hasIdNotes() => _idNotes != null;

  static YearStruct fromMap(Map<String, dynamic> data) => YearStruct(
        tipo: data['tipo'] as String?,
        tree1: data['tree1'] as String?,
        week: castToType<int>(data['week']),
        descricao: data['descricao'] as String?,
        imagem: data['imagem'] as String?,
        idNotes: data['idNotes'] as DocumentReference?,
      );

  static YearStruct? maybeFromMap(dynamic data) =>
      data is Map ? YearStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tipo': _tipo,
        'tree1': _tree1,
        'week': _week,
        'descricao': _descricao,
        'imagem': _imagem,
        'idNotes': _idNotes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'tree1': serializeParam(
          _tree1,
          ParamType.String,
        ),
        'week': serializeParam(
          _week,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
        'idNotes': serializeParam(
          _idNotes,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static YearStruct fromSerializableMap(Map<String, dynamic> data) =>
      YearStruct(
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        tree1: deserializeParam(
          data['tree1'],
          ParamType.String,
          false,
        ),
        week: deserializeParam(
          data['week'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
        idNotes: deserializeParam(
          data['idNotes'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Notes'],
        ),
      );

  @override
  String toString() => 'YearStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is YearStruct &&
        tipo == other.tipo &&
        tree1 == other.tree1 &&
        week == other.week &&
        descricao == other.descricao &&
        imagem == other.imagem &&
        idNotes == other.idNotes;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([tipo, tree1, week, descricao, imagem, idNotes]);
}

YearStruct createYearStruct({
  String? tipo,
  String? tree1,
  int? week,
  String? descricao,
  String? imagem,
  DocumentReference? idNotes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    YearStruct(
      tipo: tipo,
      tree1: tree1,
      week: week,
      descricao: descricao,
      imagem: imagem,
      idNotes: idNotes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

YearStruct? updateYearStruct(
  YearStruct? year, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    year
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addYearStructData(
  Map<String, dynamic> firestoreData,
  YearStruct? year,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (year == null) {
    return;
  }
  if (year.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && year.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final yearData = getYearFirestoreData(year, forFieldValue);
  final nestedData = yearData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = year.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getYearFirestoreData(
  YearStruct? year, [
  bool forFieldValue = false,
]) {
  if (year == null) {
    return {};
  }
  final firestoreData = mapToFirestore(year.toMap());

  // Add any Firestore field values
  year.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getYearListFirestoreData(
  List<YearStruct>? years,
) =>
    years?.map((e) => getYearFirestoreData(e, true)).toList() ?? [];
