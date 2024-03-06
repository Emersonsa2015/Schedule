// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class YearLvStruct extends FFFirebaseStruct {
  YearLvStruct({
    String? yearTipo,
    String? yearImg,
    String? year1,
    String? year2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _yearTipo = yearTipo,
        _yearImg = yearImg,
        _year1 = year1,
        _year2 = year2,
        super(firestoreUtilData);

  // "yearTipo" field.
  String? _yearTipo;
  String get yearTipo => _yearTipo ?? '';
  set yearTipo(String? val) => _yearTipo = val;
  bool hasYearTipo() => _yearTipo != null;

  // "yearImg" field.
  String? _yearImg;
  String get yearImg => _yearImg ?? '';
  set yearImg(String? val) => _yearImg = val;
  bool hasYearImg() => _yearImg != null;

  // "year1" field.
  String? _year1;
  String get year1 => _year1 ?? '';
  set year1(String? val) => _year1 = val;
  bool hasYear1() => _year1 != null;

  // "year2" field.
  String? _year2;
  String get year2 => _year2 ?? '';
  set year2(String? val) => _year2 = val;
  bool hasYear2() => _year2 != null;

  static YearLvStruct fromMap(Map<String, dynamic> data) => YearLvStruct(
        yearTipo: data['yearTipo'] as String?,
        yearImg: data['yearImg'] as String?,
        year1: data['year1'] as String?,
        year2: data['year2'] as String?,
      );

  static YearLvStruct? maybeFromMap(dynamic data) =>
      data is Map ? YearLvStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'yearTipo': _yearTipo,
        'yearImg': _yearImg,
        'year1': _year1,
        'year2': _year2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'yearTipo': serializeParam(
          _yearTipo,
          ParamType.String,
        ),
        'yearImg': serializeParam(
          _yearImg,
          ParamType.String,
        ),
        'year1': serializeParam(
          _year1,
          ParamType.String,
        ),
        'year2': serializeParam(
          _year2,
          ParamType.String,
        ),
      }.withoutNulls;

  static YearLvStruct fromSerializableMap(Map<String, dynamic> data) =>
      YearLvStruct(
        yearTipo: deserializeParam(
          data['yearTipo'],
          ParamType.String,
          false,
        ),
        yearImg: deserializeParam(
          data['yearImg'],
          ParamType.String,
          false,
        ),
        year1: deserializeParam(
          data['year1'],
          ParamType.String,
          false,
        ),
        year2: deserializeParam(
          data['year2'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'YearLvStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is YearLvStruct &&
        yearTipo == other.yearTipo &&
        yearImg == other.yearImg &&
        year1 == other.year1 &&
        year2 == other.year2;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([yearTipo, yearImg, year1, year2]);
}

YearLvStruct createYearLvStruct({
  String? yearTipo,
  String? yearImg,
  String? year1,
  String? year2,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    YearLvStruct(
      yearTipo: yearTipo,
      yearImg: yearImg,
      year1: year1,
      year2: year2,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

YearLvStruct? updateYearLvStruct(
  YearLvStruct? yearLv, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    yearLv
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addYearLvStructData(
  Map<String, dynamic> firestoreData,
  YearLvStruct? yearLv,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (yearLv == null) {
    return;
  }
  if (yearLv.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && yearLv.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final yearLvData = getYearLvFirestoreData(yearLv, forFieldValue);
  final nestedData = yearLvData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = yearLv.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getYearLvFirestoreData(
  YearLvStruct? yearLv, [
  bool forFieldValue = false,
]) {
  if (yearLv == null) {
    return {};
  }
  final firestoreData = mapToFirestore(yearLv.toMap());

  // Add any Firestore field values
  yearLv.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getYearLvListFirestoreData(
  List<YearLvStruct>? yearLvs,
) =>
    yearLvs?.map((e) => getYearLvFirestoreData(e, true)).toList() ?? [];
