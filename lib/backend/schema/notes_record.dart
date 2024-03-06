import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotesRecord extends FirestoreRecord {
  NotesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Week" field.
  int? _week;
  int get week => _week ?? 0;
  bool hasWeek() => _week != null;

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

  // "Tree4" field.
  String? _tree4;
  String get tree4 => _tree4 ?? '';
  bool hasTree4() => _tree4 != null;

  // "Tree5" field.
  String? _tree5;
  String get tree5 => _tree5 ?? '';
  bool hasTree5() => _tree5 != null;

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

  // "Nota" field.
  double? _nota;
  double get nota => _nota ?? 0.0;
  bool hasNota() => _nota != null;

  // "Hour" field.
  double? _hour;
  double get hour => _hour ?? 0.0;
  bool hasHour() => _hour != null;

  // "Duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  bool hasDuration() => _duration != null;

  // "WeekDay" field.
  String? _weekDay;
  String get weekDay => _weekDay ?? '';
  bool hasWeekDay() => _weekDay != null;

  // "Year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "Unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  bool hasUnidade() => _unidade != null;

  // "Link1" field.
  String? _link1;
  String get link1 => _link1 ?? '';
  bool hasLink1() => _link1 != null;

  // "Link2" field.
  String? _link2;
  String get link2 => _link2 ?? '';
  bool hasLink2() => _link2 != null;

  // "Link3" field.
  String? _link3;
  String get link3 => _link3 ?? '';
  bool hasLink3() => _link3 != null;

  // "NotaImagem" field.
  String? _notaImagem;
  String get notaImagem => _notaImagem ?? '';
  bool hasNotaImagem() => _notaImagem != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "idTree" field.
  DocumentReference? _idTree;
  DocumentReference? get idTree => _idTree;
  bool hasIdTree() => _idTree != null;

  // "Grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  bool hasGrupo() => _grupo != null;

  // "Cor" field.
  String? _cor;
  String get cor => _cor ?? '';
  bool hasCor() => _cor != null;

  // "CorCodigo" field.
  String? _corCodigo;
  String get corCodigo => _corCodigo ?? '';
  bool hasCorCodigo() => _corCodigo != null;

  // "CorCodigoFont" field.
  String? _corCodigoFont;
  String get corCodigoFont => _corCodigoFont ?? '';
  bool hasCorCodigoFont() => _corCodigoFont != null;

  // "Tree6" field.
  String? _tree6;
  String get tree6 => _tree6 ?? '';
  bool hasTree6() => _tree6 != null;

  // "LinkX" field.
  String? _linkX;
  String get linkX => _linkX ?? '';
  bool hasLinkX() => _linkX != null;

  // "Link0" field.
  String? _link0;
  String get link0 => _link0 ?? '';
  bool hasLink0() => _link0 != null;

  // "LinkId" field.
  DocumentReference? _linkId;
  DocumentReference? get linkId => _linkId;
  bool hasLinkId() => _linkId != null;

  // "Linhas" field.
  int? _linhas;
  int get linhas => _linhas ?? 0;
  bool hasLinhas() => _linhas != null;

  // "Image64" field.
  String? _image64;
  String get image64 => _image64 ?? '';
  bool hasImage64() => _image64 != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _week = castToType<int>(snapshotData['Week']);
    _tree1 = snapshotData['Tree1'] as String?;
    _tree2 = snapshotData['Tree2'] as String?;
    _tree3 = snapshotData['Tree3'] as String?;
    _tree4 = snapshotData['Tree4'] as String?;
    _tree5 = snapshotData['Tree5'] as String?;
    _ordem = snapshotData['Ordem'] as String?;
    _descricao = snapshotData['Descricao'] as String?;
    _atalho = snapshotData['Atalho'] as String?;
    _imagem = snapshotData['Imagem'] as String?;
    _nivel = snapshotData['Nivel'] as String?;
    _flag = snapshotData['Flag'] as bool?;
    _nota = castToType<double>(snapshotData['Nota']);
    _hour = castToType<double>(snapshotData['Hour']);
    _duration = castToType<double>(snapshotData['Duration']);
    _weekDay = snapshotData['WeekDay'] as String?;
    _year = snapshotData['Year'] as String?;
    _tag = snapshotData['Tag'] as String?;
    _valor = castToType<double>(snapshotData['Valor']);
    _unidade = snapshotData['Unidade'] as String?;
    _link1 = snapshotData['Link1'] as String?;
    _link2 = snapshotData['Link2'] as String?;
    _link3 = snapshotData['Link3'] as String?;
    _notaImagem = snapshotData['NotaImagem'] as String?;
    _usuario = snapshotData['Usuario'] as DocumentReference?;
    _idTree = snapshotData['idTree'] as DocumentReference?;
    _grupo = snapshotData['Grupo'] as String?;
    _cor = snapshotData['Cor'] as String?;
    _corCodigo = snapshotData['CorCodigo'] as String?;
    _corCodigoFont = snapshotData['CorCodigoFont'] as String?;
    _tree6 = snapshotData['Tree6'] as String?;
    _linkX = snapshotData['LinkX'] as String?;
    _link0 = snapshotData['Link0'] as String?;
    _linkId = snapshotData['LinkId'] as DocumentReference?;
    _linhas = castToType<int>(snapshotData['Linhas']);
    _image64 = snapshotData['Image64'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotesRecord.fromSnapshot(s));

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotesRecord.fromSnapshot(s));

  static NotesRecord fromSnapshot(DocumentSnapshot snapshot) => NotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotesRecordData({
  DateTime? date,
  int? week,
  String? tree1,
  String? tree2,
  String? tree3,
  String? tree4,
  String? tree5,
  String? ordem,
  String? descricao,
  String? atalho,
  String? imagem,
  String? nivel,
  bool? flag,
  double? nota,
  double? hour,
  double? duration,
  String? weekDay,
  String? year,
  String? tag,
  double? valor,
  String? unidade,
  String? link1,
  String? link2,
  String? link3,
  String? notaImagem,
  DocumentReference? usuario,
  DocumentReference? idTree,
  String? grupo,
  String? cor,
  String? corCodigo,
  String? corCodigoFont,
  String? tree6,
  String? linkX,
  String? link0,
  DocumentReference? linkId,
  int? linhas,
  String? image64,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'Week': week,
      'Tree1': tree1,
      'Tree2': tree2,
      'Tree3': tree3,
      'Tree4': tree4,
      'Tree5': tree5,
      'Ordem': ordem,
      'Descricao': descricao,
      'Atalho': atalho,
      'Imagem': imagem,
      'Nivel': nivel,
      'Flag': flag,
      'Nota': nota,
      'Hour': hour,
      'Duration': duration,
      'WeekDay': weekDay,
      'Year': year,
      'Tag': tag,
      'Valor': valor,
      'Unidade': unidade,
      'Link1': link1,
      'Link2': link2,
      'Link3': link3,
      'NotaImagem': notaImagem,
      'Usuario': usuario,
      'idTree': idTree,
      'Grupo': grupo,
      'Cor': cor,
      'CorCodigo': corCodigo,
      'CorCodigoFont': corCodigoFont,
      'Tree6': tree6,
      'LinkX': linkX,
      'Link0': link0,
      'LinkId': linkId,
      'Linhas': linhas,
      'Image64': image64,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotesRecordDocumentEquality implements Equality<NotesRecord> {
  const NotesRecordDocumentEquality();

  @override
  bool equals(NotesRecord? e1, NotesRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.week == e2?.week &&
        e1?.tree1 == e2?.tree1 &&
        e1?.tree2 == e2?.tree2 &&
        e1?.tree3 == e2?.tree3 &&
        e1?.tree4 == e2?.tree4 &&
        e1?.tree5 == e2?.tree5 &&
        e1?.ordem == e2?.ordem &&
        e1?.descricao == e2?.descricao &&
        e1?.atalho == e2?.atalho &&
        e1?.imagem == e2?.imagem &&
        e1?.nivel == e2?.nivel &&
        e1?.flag == e2?.flag &&
        e1?.nota == e2?.nota &&
        e1?.hour == e2?.hour &&
        e1?.duration == e2?.duration &&
        e1?.weekDay == e2?.weekDay &&
        e1?.year == e2?.year &&
        e1?.tag == e2?.tag &&
        e1?.valor == e2?.valor &&
        e1?.unidade == e2?.unidade &&
        e1?.link1 == e2?.link1 &&
        e1?.link2 == e2?.link2 &&
        e1?.link3 == e2?.link3 &&
        e1?.notaImagem == e2?.notaImagem &&
        e1?.usuario == e2?.usuario &&
        e1?.idTree == e2?.idTree &&
        e1?.grupo == e2?.grupo &&
        e1?.cor == e2?.cor &&
        e1?.corCodigo == e2?.corCodigo &&
        e1?.corCodigoFont == e2?.corCodigoFont &&
        e1?.tree6 == e2?.tree6 &&
        e1?.linkX == e2?.linkX &&
        e1?.link0 == e2?.link0 &&
        e1?.linkId == e2?.linkId &&
        e1?.linhas == e2?.linhas &&
        e1?.image64 == e2?.image64;
  }

  @override
  int hash(NotesRecord? e) => const ListEquality().hash([
        e?.date,
        e?.week,
        e?.tree1,
        e?.tree2,
        e?.tree3,
        e?.tree4,
        e?.tree5,
        e?.ordem,
        e?.descricao,
        e?.atalho,
        e?.imagem,
        e?.nivel,
        e?.flag,
        e?.nota,
        e?.hour,
        e?.duration,
        e?.weekDay,
        e?.year,
        e?.tag,
        e?.valor,
        e?.unidade,
        e?.link1,
        e?.link2,
        e?.link3,
        e?.notaImagem,
        e?.usuario,
        e?.idTree,
        e?.grupo,
        e?.cor,
        e?.corCodigo,
        e?.corCodigoFont,
        e?.tree6,
        e?.linkX,
        e?.link0,
        e?.linkId,
        e?.linhas,
        e?.image64
      ]);

  @override
  bool isValidKey(Object? o) => o is NotesRecord;
}
