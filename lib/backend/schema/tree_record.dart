import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreeRecord extends FirestoreRecord {
  TreeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Root" field.
  String? _root;
  String get root => _root ?? '';
  bool hasRoot() => _root != null;

  // "Tree" field.
  String? _tree;
  String get tree => _tree ?? '';
  bool hasTree() => _tree != null;

  // "Tree1" field.
  String? _tree1;
  String get tree1 => _tree1 ?? '';
  bool hasTree1() => _tree1 != null;

  // "Tree2" field.
  String? _tree2;
  String get tree2 => _tree2 ?? '';
  bool hasTree2() => _tree2 != null;

  // "Tree3" field.
  String? _tree3;
  String get tree3 => _tree3 ?? '';
  bool hasTree3() => _tree3 != null;

  // "Ordem" field.
  String? _ordem;
  String get ordem => _ordem ?? '';
  bool hasOrdem() => _ordem != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Atalho" field.
  String? _atalho;
  String get atalho => _atalho ?? '';
  bool hasAtalho() => _atalho != null;

  // "Imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "Nivel" field.
  String? _nivel;
  String get nivel => _nivel ?? '';
  bool hasNivel() => _nivel != null;

  // "Flag" field.
  bool? _flag;
  bool get flag => _flag ?? false;
  bool hasFlag() => _flag != null;

  // "Ativo" field.
  int? _ativo;
  int get ativo => _ativo ?? 0;
  bool hasAtivo() => _ativo != null;

  // "Image64" field.
  String? _image64;
  String get image64 => _image64 ?? '';
  bool hasImage64() => _image64 != null;

  // "Soma" field.
  double? _soma;
  double get soma => _soma ?? 0.0;
  bool hasSoma() => _soma != null;

  // "Contador" field.
  double? _contador;
  double get contador => _contador ?? 0.0;
  bool hasContador() => _contador != null;

  // "Media" field.
  double? _media;
  double get media => _media ?? 0.0;
  bool hasMedia() => _media != null;

  // "Tree4" field.
  String? _tree4;
  String get tree4 => _tree4 ?? '';
  bool hasTree4() => _tree4 != null;

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

  void _initializeFields() {
    _root = snapshotData['Root'] as String?;
    _tree = snapshotData['Tree'] as String?;
    _tree1 = snapshotData['Tree1'] as String?;
    _tree2 = snapshotData['Tree2'] as String?;
    _tree3 = snapshotData['Tree3'] as String?;
    _ordem = snapshotData['Ordem'] as String?;
    _descricao = snapshotData['Descricao'] as String?;
    _atalho = snapshotData['Atalho'] as String?;
    _imagem = snapshotData['Imagem'] as String?;
    _nivel = snapshotData['Nivel'] as String?;
    _flag = snapshotData['Flag'] as bool?;
    _ativo = castToType<int>(snapshotData['Ativo']);
    _image64 = snapshotData['Image64'] as String?;
    _soma = castToType<double>(snapshotData['Soma']);
    _contador = castToType<double>(snapshotData['Contador']);
    _media = castToType<double>(snapshotData['Media']);
    _tree4 = snapshotData['Tree4'] as String?;
    _comunidades = snapshotData['Comunidades'] as String?;
    _videos = castToType<int>(snapshotData['Videos']);
    _salas = castToType<int>(snapshotData['Salas']);
    _forum = castToType<int>(snapshotData['Forum']);
    _posts = castToType<int>(snapshotData['Posts']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tree');

  static Stream<TreeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TreeRecord.fromSnapshot(s));

  static Future<TreeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TreeRecord.fromSnapshot(s));

  static TreeRecord fromSnapshot(DocumentSnapshot snapshot) => TreeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TreeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TreeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TreeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TreeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTreeRecordData({
  String? root,
  String? tree,
  String? tree1,
  String? tree2,
  String? tree3,
  String? ordem,
  String? descricao,
  String? atalho,
  String? imagem,
  String? nivel,
  bool? flag,
  int? ativo,
  String? image64,
  double? soma,
  double? contador,
  double? media,
  String? tree4,
  String? comunidades,
  int? videos,
  int? salas,
  int? forum,
  int? posts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Root': root,
      'Tree': tree,
      'Tree1': tree1,
      'Tree2': tree2,
      'Tree3': tree3,
      'Ordem': ordem,
      'Descricao': descricao,
      'Atalho': atalho,
      'Imagem': imagem,
      'Nivel': nivel,
      'Flag': flag,
      'Ativo': ativo,
      'Image64': image64,
      'Soma': soma,
      'Contador': contador,
      'Media': media,
      'Tree4': tree4,
      'Comunidades': comunidades,
      'Videos': videos,
      'Salas': salas,
      'Forum': forum,
      'Posts': posts,
    }.withoutNulls,
  );

  return firestoreData;
}

class TreeRecordDocumentEquality implements Equality<TreeRecord> {
  const TreeRecordDocumentEquality();

  @override
  bool equals(TreeRecord? e1, TreeRecord? e2) {
    return e1?.root == e2?.root &&
        e1?.tree == e2?.tree &&
        e1?.tree1 == e2?.tree1 &&
        e1?.tree2 == e2?.tree2 &&
        e1?.tree3 == e2?.tree3 &&
        e1?.ordem == e2?.ordem &&
        e1?.descricao == e2?.descricao &&
        e1?.atalho == e2?.atalho &&
        e1?.imagem == e2?.imagem &&
        e1?.nivel == e2?.nivel &&
        e1?.flag == e2?.flag &&
        e1?.ativo == e2?.ativo &&
        e1?.image64 == e2?.image64 &&
        e1?.soma == e2?.soma &&
        e1?.contador == e2?.contador &&
        e1?.media == e2?.media &&
        e1?.tree4 == e2?.tree4 &&
        e1?.comunidades == e2?.comunidades &&
        e1?.videos == e2?.videos &&
        e1?.salas == e2?.salas &&
        e1?.forum == e2?.forum &&
        e1?.posts == e2?.posts;
  }

  @override
  int hash(TreeRecord? e) => const ListEquality().hash([
        e?.root,
        e?.tree,
        e?.tree1,
        e?.tree2,
        e?.tree3,
        e?.ordem,
        e?.descricao,
        e?.atalho,
        e?.imagem,
        e?.nivel,
        e?.flag,
        e?.ativo,
        e?.image64,
        e?.soma,
        e?.contador,
        e?.media,
        e?.tree4,
        e?.comunidades,
        e?.videos,
        e?.salas,
        e?.forum,
        e?.posts
      ]);

  @override
  bool isValidKey(Object? o) => o is TreeRecord;
}
