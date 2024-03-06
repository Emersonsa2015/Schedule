import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ObsRecord extends FirestoreRecord {
  ObsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Ordem" field.
  String? _ordem;
  String get ordem => _ordem ?? '';
  bool hasOrdem() => _ordem != null;

  // "Grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  bool hasGrupo() => _grupo != null;

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  // "Nota" field.
  double? _nota;
  double get nota => _nota ?? 0.0;
  bool hasNota() => _nota != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _ordem = snapshotData['Ordem'] as String?;
    _grupo = snapshotData['Grupo'] as String?;
    _titulo = snapshotData['Titulo'] as String?;
    _obs = snapshotData['Obs'] as String?;
    _nota = castToType<double>(snapshotData['Nota']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Obs');

  static Stream<ObsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ObsRecord.fromSnapshot(s));

  static Future<ObsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ObsRecord.fromSnapshot(s));

  static ObsRecord fromSnapshot(DocumentSnapshot snapshot) => ObsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ObsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ObsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ObsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ObsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createObsRecordData({
  DateTime? date,
  String? ordem,
  String? grupo,
  String? titulo,
  String? obs,
  double? nota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'Ordem': ordem,
      'Grupo': grupo,
      'Titulo': titulo,
      'Obs': obs,
      'Nota': nota,
    }.withoutNulls,
  );

  return firestoreData;
}

class ObsRecordDocumentEquality implements Equality<ObsRecord> {
  const ObsRecordDocumentEquality();

  @override
  bool equals(ObsRecord? e1, ObsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.ordem == e2?.ordem &&
        e1?.grupo == e2?.grupo &&
        e1?.titulo == e2?.titulo &&
        e1?.obs == e2?.obs &&
        e1?.nota == e2?.nota;
  }

  @override
  int hash(ObsRecord? e) => const ListEquality()
      .hash([e?.date, e?.ordem, e?.grupo, e?.titulo, e?.obs, e?.nota]);

  @override
  bool isValidKey(Object? o) => o is ObsRecord;
}
