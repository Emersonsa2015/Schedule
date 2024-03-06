import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SocialRecord extends FirestoreRecord {
  SocialRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Comunidades" field.
  String? _comunidades;
  String get comunidades => _comunidades ?? '';
  bool hasComunidades() => _comunidades != null;

  // "Videos" field.
  int? _videos;
  int get videos => _videos ?? 0;
  bool hasVideos() => _videos != null;

  // "Salas" field.
  int? _salas;
  int get salas => _salas ?? 0;
  bool hasSalas() => _salas != null;

  // "Forum" field.
  int? _forum;
  int get forum => _forum ?? 0;
  bool hasForum() => _forum != null;

  // "Posts" field.
  int? _posts;
  int get posts => _posts ?? 0;
  bool hasPosts() => _posts != null;

  // "Imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  void _initializeFields() {
    _comunidades = snapshotData['Comunidades'] as String?;
    _videos = castToType<int>(snapshotData['Videos']);
    _salas = castToType<int>(snapshotData['Salas']);
    _forum = castToType<int>(snapshotData['Forum']);
    _posts = castToType<int>(snapshotData['Posts']);
    _imagem = snapshotData['Imagem'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Social');

  static Stream<SocialRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SocialRecord.fromSnapshot(s));

  static Future<SocialRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SocialRecord.fromSnapshot(s));

  static SocialRecord fromSnapshot(DocumentSnapshot snapshot) => SocialRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SocialRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SocialRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SocialRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SocialRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSocialRecordData({
  String? comunidades,
  int? videos,
  int? salas,
  int? forum,
  int? posts,
  String? imagem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Comunidades': comunidades,
      'Videos': videos,
      'Salas': salas,
      'Forum': forum,
      'Posts': posts,
      'Imagem': imagem,
    }.withoutNulls,
  );

  return firestoreData;
}

class SocialRecordDocumentEquality implements Equality<SocialRecord> {
  const SocialRecordDocumentEquality();

  @override
  bool equals(SocialRecord? e1, SocialRecord? e2) {
    return e1?.comunidades == e2?.comunidades &&
        e1?.videos == e2?.videos &&
        e1?.salas == e2?.salas &&
        e1?.forum == e2?.forum &&
        e1?.posts == e2?.posts &&
        e1?.imagem == e2?.imagem;
  }

  @override
  int hash(SocialRecord? e) => const ListEquality().hash(
      [e?.comunidades, e?.videos, e?.salas, e?.forum, e?.posts, e?.imagem]);

  @override
  bool isValidKey(Object? o) => o is SocialRecord;
}
