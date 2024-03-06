import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaRecord extends FirestoreRecord {
  AgendaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Ordem" field.
  String? _ordem;
  String get ordem => _ordem ?? '';
  bool hasOrdem() => _ordem != null;

  // "Nota" field.
  double? _nota;
  double get nota => _nota ?? 0.0;
  bool hasNota() => _nota != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _descricao = snapshotData['Descricao'] as String?;
    _ordem = snapshotData['Ordem'] as String?;
    _nota = castToType<double>(snapshotData['Nota']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Agenda');

  static Stream<AgendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaRecord.fromSnapshot(s));

  static Future<AgendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaRecord.fromSnapshot(s));

  static AgendaRecord fromSnapshot(DocumentSnapshot snapshot) => AgendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaRecordData({
  DateTime? date,
  String? descricao,
  String? ordem,
  double? nota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'Descricao': descricao,
      'Ordem': ordem,
      'Nota': nota,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaRecordDocumentEquality implements Equality<AgendaRecord> {
  const AgendaRecordDocumentEquality();

  @override
  bool equals(AgendaRecord? e1, AgendaRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.descricao == e2?.descricao &&
        e1?.ordem == e2?.ordem &&
        e1?.nota == e2?.nota;
  }

  @override
  int hash(AgendaRecord? e) =>
      const ListEquality().hash([e?.date, e?.descricao, e?.ordem, e?.nota]);

  @override
  bool isValidKey(Object? o) => o is AgendaRecord;
}
