// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EixoXYStruct extends FFFirebaseStruct {
  EixoXYStruct({
    double? eixoX,
    double? eixoY,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eixoX = eixoX,
        _eixoY = eixoY,
        super(firestoreUtilData);

  // "EixoX" field.
  double? _eixoX;
  double get eixoX => _eixoX ?? 0.0;
  set eixoX(double? val) => _eixoX = val;
  void incrementEixoX(double amount) => _eixoX = eixoX + amount;
  bool hasEixoX() => _eixoX != null;

  // "EixoY" field.
  double? _eixoY;
  double get eixoY => _eixoY ?? 0.0;
  set eixoY(double? val) => _eixoY = val;
  void incrementEixoY(double amount) => _eixoY = eixoY + amount;
  bool hasEixoY() => _eixoY != null;

  static EixoXYStruct fromMap(Map<String, dynamic> data) => EixoXYStruct(
        eixoX: castToType<double>(data['EixoX']),
        eixoY: castToType<double>(data['EixoY']),
      );

  static EixoXYStruct? maybeFromMap(dynamic data) =>
      data is Map ? EixoXYStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'EixoX': _eixoX,
        'EixoY': _eixoY,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'EixoX': serializeParam(
          _eixoX,
          ParamType.double,
        ),
        'EixoY': serializeParam(
          _eixoY,
          ParamType.double,
        ),
      }.withoutNulls;

  static EixoXYStruct fromSerializableMap(Map<String, dynamic> data) =>
      EixoXYStruct(
        eixoX: deserializeParam(
          data['EixoX'],
          ParamType.double,
          false,
        ),
        eixoY: deserializeParam(
          data['EixoY'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'EixoXYStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EixoXYStruct &&
        eixoX == other.eixoX &&
        eixoY == other.eixoY;
  }

  @override
  int get hashCode => const ListEquality().hash([eixoX, eixoY]);
}

EixoXYStruct createEixoXYStruct({
  double? eixoX,
  double? eixoY,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EixoXYStruct(
      eixoX: eixoX,
      eixoY: eixoY,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EixoXYStruct? updateEixoXYStruct(
  EixoXYStruct? eixoXY, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eixoXY
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEixoXYStructData(
  Map<String, dynamic> firestoreData,
  EixoXYStruct? eixoXY,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eixoXY == null) {
    return;
  }
  if (eixoXY.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eixoXY.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eixoXYData = getEixoXYFirestoreData(eixoXY, forFieldValue);
  final nestedData = eixoXYData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eixoXY.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEixoXYFirestoreData(
  EixoXYStruct? eixoXY, [
  bool forFieldValue = false,
]) {
  if (eixoXY == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eixoXY.toMap());

  // Add any Firestore field values
  eixoXY.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEixoXYListFirestoreData(
  List<EixoXYStruct>? eixoXYs,
) =>
    eixoXYs?.map((e) => getEixoXYFirestoreData(e, true)).toList() ?? [];
