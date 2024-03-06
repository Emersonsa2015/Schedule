// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreeStateStruct extends FFFirebaseStruct {
  TreeStateStruct({
    double? loop,
    String? descricao,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _loop = loop,
        _descricao = descricao,
        super(firestoreUtilData);

  // "loop" field.
  double? _loop;
  double get loop => _loop ?? 0.0;
  set loop(double? val) => _loop = val;
  void incrementLoop(double amount) => _loop = loop + amount;
  bool hasLoop() => _loop != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  static TreeStateStruct fromMap(Map<String, dynamic> data) => TreeStateStruct(
        loop: castToType<double>(data['loop']),
        descricao: data['Descricao'] as String?,
      );

  static TreeStateStruct? maybeFromMap(dynamic data) => data is Map
      ? TreeStateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'loop': _loop,
        'Descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'loop': serializeParam(
          _loop,
          ParamType.double,
        ),
        'Descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static TreeStateStruct fromSerializableMap(Map<String, dynamic> data) =>
      TreeStateStruct(
        loop: deserializeParam(
          data['loop'],
          ParamType.double,
          false,
        ),
        descricao: deserializeParam(
          data['Descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TreeStateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TreeStateStruct &&
        loop == other.loop &&
        descricao == other.descricao;
  }

  @override
  int get hashCode => const ListEquality().hash([loop, descricao]);
}

TreeStateStruct createTreeStateStruct({
  double? loop,
  String? descricao,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TreeStateStruct(
      loop: loop,
      descricao: descricao,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TreeStateStruct? updateTreeStateStruct(
  TreeStateStruct? treeState, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    treeState
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTreeStateStructData(
  Map<String, dynamic> firestoreData,
  TreeStateStruct? treeState,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (treeState == null) {
    return;
  }
  if (treeState.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && treeState.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final treeStateData = getTreeStateFirestoreData(treeState, forFieldValue);
  final nestedData = treeStateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = treeState.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTreeStateFirestoreData(
  TreeStateStruct? treeState, [
  bool forFieldValue = false,
]) {
  if (treeState == null) {
    return {};
  }
  final firestoreData = mapToFirestore(treeState.toMap());

  // Add any Firestore field values
  treeState.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTreeStateListFirestoreData(
  List<TreeStateStruct>? treeStates,
) =>
    treeStates?.map((e) => getTreeStateFirestoreData(e, true)).toList() ?? [];
