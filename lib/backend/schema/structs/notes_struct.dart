// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotesStruct extends FFFirebaseStruct {
  NotesStruct({
    DateTime? date,
    int? week,
    String? tree1,
    String? tree2,
    String? tree3,
    String? tree4,
    String? tree5,
    String? tree6,
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
    DocumentReference? idTree,
    String? grupo,
    String? cor,
    String? corCodigo,
    String? corCodigoFont,
    int? ativo,
    DocumentReference? idNotes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _week = week,
        _tree1 = tree1,
        _tree2 = tree2,
        _tree3 = tree3,
        _tree4 = tree4,
        _tree5 = tree5,
        _tree6 = tree6,
        _ordem = ordem,
        _descricao = descricao,
        _atalho = atalho,
        _imagem = imagem,
        _nivel = nivel,
        _flag = flag,
        _nota = nota,
        _hour = hour,
        _duration = duration,
        _weekDay = weekDay,
        _year = year,
        _tag = tag,
        _valor = valor,
        _unidade = unidade,
        _link1 = link1,
        _link2 = link2,
        _link3 = link3,
        _notaImagem = notaImagem,
        _idTree = idTree,
        _grupo = grupo,
        _cor = cor,
        _corCodigo = corCodigo,
        _corCodigoFont = corCodigoFont,
        _ativo = ativo,
        _idNotes = idNotes,
        super(firestoreUtilData);

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "Week" field.
  int? _week;
  int get week => _week ?? 0;
  set week(int? val) => _week = val;
  void incrementWeek(int amount) => _week = week + amount;
  bool hasWeek() => _week != null;

  // "Tree1" field.
  String? _tree1;
  String get tree1 => _tree1 ?? '';
  set tree1(String? val) => _tree1 = val;
  bool hasTree1() => _tree1 != null;

  // "Tree2" field.
  String? _tree2;
  String get tree2 => _tree2 ?? '';
  set tree2(String? val) => _tree2 = val;
  bool hasTree2() => _tree2 != null;

  // "Tree3" field.
  String? _tree3;
  String get tree3 => _tree3 ?? '';
  set tree3(String? val) => _tree3 = val;
  bool hasTree3() => _tree3 != null;

  // "Tree4" field.
  String? _tree4;
  String get tree4 => _tree4 ?? '';
  set tree4(String? val) => _tree4 = val;
  bool hasTree4() => _tree4 != null;

  // "Tree5" field.
  String? _tree5;
  String get tree5 => _tree5 ?? '';
  set tree5(String? val) => _tree5 = val;
  bool hasTree5() => _tree5 != null;

  // "Tree6" field.
  String? _tree6;
  String get tree6 => _tree6 ?? '';
  set tree6(String? val) => _tree6 = val;
  bool hasTree6() => _tree6 != null;

  // "Ordem" field.
  String? _ordem;
  String get ordem => _ordem ?? '';
  set ordem(String? val) => _ordem = val;
  bool hasOrdem() => _ordem != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  // "Atalho" field.
  String? _atalho;
  String get atalho => _atalho ?? '';
  set atalho(String? val) => _atalho = val;
  bool hasAtalho() => _atalho != null;

  // "Imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;
  bool hasImagem() => _imagem != null;

  // "Nivel" field.
  String? _nivel;
  String get nivel => _nivel ?? '';
  set nivel(String? val) => _nivel = val;
  bool hasNivel() => _nivel != null;

  // "Flag" field.
  bool? _flag;
  bool get flag => _flag ?? false;
  set flag(bool? val) => _flag = val;
  bool hasFlag() => _flag != null;

  // "Nota" field.
  double? _nota;
  double get nota => _nota ?? 0.0;
  set nota(double? val) => _nota = val;
  void incrementNota(double amount) => _nota = nota + amount;
  bool hasNota() => _nota != null;

  // "Hour" field.
  double? _hour;
  double get hour => _hour ?? 0.0;
  set hour(double? val) => _hour = val;
  void incrementHour(double amount) => _hour = hour + amount;
  bool hasHour() => _hour != null;

  // "Duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  set duration(double? val) => _duration = val;
  void incrementDuration(double amount) => _duration = duration + amount;
  bool hasDuration() => _duration != null;

  // "WeekDay" field.
  String? _weekDay;
  String get weekDay => _weekDay ?? '';
  set weekDay(String? val) => _weekDay = val;
  bool hasWeekDay() => _weekDay != null;

  // "Year" field.
  String? _year;
  String get year => _year ?? '';
  set year(String? val) => _year = val;
  bool hasYear() => _year != null;

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "Unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  set unidade(String? val) => _unidade = val;
  bool hasUnidade() => _unidade != null;

  // "Link1" field.
  String? _link1;
  String get link1 => _link1 ?? '';
  set link1(String? val) => _link1 = val;
  bool hasLink1() => _link1 != null;

  // "Link2" field.
  String? _link2;
  String get link2 => _link2 ?? '';
  set link2(String? val) => _link2 = val;
  bool hasLink2() => _link2 != null;

  // "Link3" field.
  String? _link3;
  String get link3 => _link3 ?? '';
  set link3(String? val) => _link3 = val;
  bool hasLink3() => _link3 != null;

  // "NotaImagem" field.
  String? _notaImagem;
  String get notaImagem => _notaImagem ?? '';
  set notaImagem(String? val) => _notaImagem = val;
  bool hasNotaImagem() => _notaImagem != null;

  // "idTree" field.
  DocumentReference? _idTree;
  DocumentReference? get idTree => _idTree;
  set idTree(DocumentReference? val) => _idTree = val;
  bool hasIdTree() => _idTree != null;

  // "Grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  set grupo(String? val) => _grupo = val;
  bool hasGrupo() => _grupo != null;

  // "Cor" field.
  String? _cor;
  String get cor => _cor ?? '';
  set cor(String? val) => _cor = val;
  bool hasCor() => _cor != null;

  // "CorCodigo" field.
  String? _corCodigo;
  String get corCodigo => _corCodigo ?? '';
  set corCodigo(String? val) => _corCodigo = val;
  bool hasCorCodigo() => _corCodigo != null;

  // "CorCodigoFont" field.
  String? _corCodigoFont;
  String get corCodigoFont => _corCodigoFont ?? '';
  set corCodigoFont(String? val) => _corCodigoFont = val;
  bool hasCorCodigoFont() => _corCodigoFont != null;

  // "Ativo" field.
  int? _ativo;
  int get ativo => _ativo ?? 0;
  set ativo(int? val) => _ativo = val;
  void incrementAtivo(int amount) => _ativo = ativo + amount;
  bool hasAtivo() => _ativo != null;

  // "idNotes" field.
  DocumentReference? _idNotes;
  DocumentReference? get idNotes => _idNotes;
  set idNotes(DocumentReference? val) => _idNotes = val;
  bool hasIdNotes() => _idNotes != null;

  static NotesStruct fromMap(Map<String, dynamic> data) => NotesStruct(
        date: data['Date'] as DateTime?,
        week: castToType<int>(data['Week']),
        tree1: data['Tree1'] as String?,
        tree2: data['Tree2'] as String?,
        tree3: data['Tree3'] as String?,
        tree4: data['Tree4'] as String?,
        tree5: data['Tree5'] as String?,
        tree6: data['Tree6'] as String?,
        ordem: data['Ordem'] as String?,
        descricao: data['Descricao'] as String?,
        atalho: data['Atalho'] as String?,
        imagem: data['Imagem'] as String?,
        nivel: data['Nivel'] as String?,
        flag: data['Flag'] as bool?,
        nota: castToType<double>(data['Nota']),
        hour: castToType<double>(data['Hour']),
        duration: castToType<double>(data['Duration']),
        weekDay: data['WeekDay'] as String?,
        year: data['Year'] as String?,
        tag: data['Tag'] as String?,
        valor: castToType<double>(data['Valor']),
        unidade: data['Unidade'] as String?,
        link1: data['Link1'] as String?,
        link2: data['Link2'] as String?,
        link3: data['Link3'] as String?,
        notaImagem: data['NotaImagem'] as String?,
        idTree: data['idTree'] as DocumentReference?,
        grupo: data['Grupo'] as String?,
        cor: data['Cor'] as String?,
        corCodigo: data['CorCodigo'] as String?,
        corCodigoFont: data['CorCodigoFont'] as String?,
        ativo: castToType<int>(data['Ativo']),
        idNotes: data['idNotes'] as DocumentReference?,
      );

  static NotesStruct? maybeFromMap(dynamic data) =>
      data is Map ? NotesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Date': _date,
        'Week': _week,
        'Tree1': _tree1,
        'Tree2': _tree2,
        'Tree3': _tree3,
        'Tree4': _tree4,
        'Tree5': _tree5,
        'Tree6': _tree6,
        'Ordem': _ordem,
        'Descricao': _descricao,
        'Atalho': _atalho,
        'Imagem': _imagem,
        'Nivel': _nivel,
        'Flag': _flag,
        'Nota': _nota,
        'Hour': _hour,
        'Duration': _duration,
        'WeekDay': _weekDay,
        'Year': _year,
        'Tag': _tag,
        'Valor': _valor,
        'Unidade': _unidade,
        'Link1': _link1,
        'Link2': _link2,
        'Link3': _link3,
        'NotaImagem': _notaImagem,
        'idTree': _idTree,
        'Grupo': _grupo,
        'Cor': _cor,
        'CorCodigo': _corCodigo,
        'CorCodigoFont': _corCodigoFont,
        'Ativo': _ativo,
        'idNotes': _idNotes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'Week': serializeParam(
          _week,
          ParamType.int,
        ),
        'Tree1': serializeParam(
          _tree1,
          ParamType.String,
        ),
        'Tree2': serializeParam(
          _tree2,
          ParamType.String,
        ),
        'Tree3': serializeParam(
          _tree3,
          ParamType.String,
        ),
        'Tree4': serializeParam(
          _tree4,
          ParamType.String,
        ),
        'Tree5': serializeParam(
          _tree5,
          ParamType.String,
        ),
        'Tree6': serializeParam(
          _tree6,
          ParamType.String,
        ),
        'Ordem': serializeParam(
          _ordem,
          ParamType.String,
        ),
        'Descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'Atalho': serializeParam(
          _atalho,
          ParamType.String,
        ),
        'Imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
        'Nivel': serializeParam(
          _nivel,
          ParamType.String,
        ),
        'Flag': serializeParam(
          _flag,
          ParamType.bool,
        ),
        'Nota': serializeParam(
          _nota,
          ParamType.double,
        ),
        'Hour': serializeParam(
          _hour,
          ParamType.double,
        ),
        'Duration': serializeParam(
          _duration,
          ParamType.double,
        ),
        'WeekDay': serializeParam(
          _weekDay,
          ParamType.String,
        ),
        'Year': serializeParam(
          _year,
          ParamType.String,
        ),
        'Tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'Valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'Unidade': serializeParam(
          _unidade,
          ParamType.String,
        ),
        'Link1': serializeParam(
          _link1,
          ParamType.String,
        ),
        'Link2': serializeParam(
          _link2,
          ParamType.String,
        ),
        'Link3': serializeParam(
          _link3,
          ParamType.String,
        ),
        'NotaImagem': serializeParam(
          _notaImagem,
          ParamType.String,
        ),
        'idTree': serializeParam(
          _idTree,
          ParamType.DocumentReference,
        ),
        'Grupo': serializeParam(
          _grupo,
          ParamType.String,
        ),
        'Cor': serializeParam(
          _cor,
          ParamType.String,
        ),
        'CorCodigo': serializeParam(
          _corCodigo,
          ParamType.String,
        ),
        'CorCodigoFont': serializeParam(
          _corCodigoFont,
          ParamType.String,
        ),
        'Ativo': serializeParam(
          _ativo,
          ParamType.int,
        ),
        'idNotes': serializeParam(
          _idNotes,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static NotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotesStruct(
        date: deserializeParam(
          data['Date'],
          ParamType.DateTime,
          false,
        ),
        week: deserializeParam(
          data['Week'],
          ParamType.int,
          false,
        ),
        tree1: deserializeParam(
          data['Tree1'],
          ParamType.String,
          false,
        ),
        tree2: deserializeParam(
          data['Tree2'],
          ParamType.String,
          false,
        ),
        tree3: deserializeParam(
          data['Tree3'],
          ParamType.String,
          false,
        ),
        tree4: deserializeParam(
          data['Tree4'],
          ParamType.String,
          false,
        ),
        tree5: deserializeParam(
          data['Tree5'],
          ParamType.String,
          false,
        ),
        tree6: deserializeParam(
          data['Tree6'],
          ParamType.String,
          false,
        ),
        ordem: deserializeParam(
          data['Ordem'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['Descricao'],
          ParamType.String,
          false,
        ),
        atalho: deserializeParam(
          data['Atalho'],
          ParamType.String,
          false,
        ),
        imagem: deserializeParam(
          data['Imagem'],
          ParamType.String,
          false,
        ),
        nivel: deserializeParam(
          data['Nivel'],
          ParamType.String,
          false,
        ),
        flag: deserializeParam(
          data['Flag'],
          ParamType.bool,
          false,
        ),
        nota: deserializeParam(
          data['Nota'],
          ParamType.double,
          false,
        ),
        hour: deserializeParam(
          data['Hour'],
          ParamType.double,
          false,
        ),
        duration: deserializeParam(
          data['Duration'],
          ParamType.double,
          false,
        ),
        weekDay: deserializeParam(
          data['WeekDay'],
          ParamType.String,
          false,
        ),
        year: deserializeParam(
          data['Year'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['Tag'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['Valor'],
          ParamType.double,
          false,
        ),
        unidade: deserializeParam(
          data['Unidade'],
          ParamType.String,
          false,
        ),
        link1: deserializeParam(
          data['Link1'],
          ParamType.String,
          false,
        ),
        link2: deserializeParam(
          data['Link2'],
          ParamType.String,
          false,
        ),
        link3: deserializeParam(
          data['Link3'],
          ParamType.String,
          false,
        ),
        notaImagem: deserializeParam(
          data['NotaImagem'],
          ParamType.String,
          false,
        ),
        idTree: deserializeParam(
          data['idTree'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Tree'],
        ),
        grupo: deserializeParam(
          data['Grupo'],
          ParamType.String,
          false,
        ),
        cor: deserializeParam(
          data['Cor'],
          ParamType.String,
          false,
        ),
        corCodigo: deserializeParam(
          data['CorCodigo'],
          ParamType.String,
          false,
        ),
        corCodigoFont: deserializeParam(
          data['CorCodigoFont'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['Ativo'],
          ParamType.int,
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
  String toString() => 'NotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotesStruct &&
        date == other.date &&
        week == other.week &&
        tree1 == other.tree1 &&
        tree2 == other.tree2 &&
        tree3 == other.tree3 &&
        tree4 == other.tree4 &&
        tree5 == other.tree5 &&
        tree6 == other.tree6 &&
        ordem == other.ordem &&
        descricao == other.descricao &&
        atalho == other.atalho &&
        imagem == other.imagem &&
        nivel == other.nivel &&
        flag == other.flag &&
        nota == other.nota &&
        hour == other.hour &&
        duration == other.duration &&
        weekDay == other.weekDay &&
        year == other.year &&
        tag == other.tag &&
        valor == other.valor &&
        unidade == other.unidade &&
        link1 == other.link1 &&
        link2 == other.link2 &&
        link3 == other.link3 &&
        notaImagem == other.notaImagem &&
        idTree == other.idTree &&
        grupo == other.grupo &&
        cor == other.cor &&
        corCodigo == other.corCodigo &&
        corCodigoFont == other.corCodigoFont &&
        ativo == other.ativo &&
        idNotes == other.idNotes;
  }

  @override
  int get hashCode => const ListEquality().hash([
        date,
        week,
        tree1,
        tree2,
        tree3,
        tree4,
        tree5,
        tree6,
        ordem,
        descricao,
        atalho,
        imagem,
        nivel,
        flag,
        nota,
        hour,
        duration,
        weekDay,
        year,
        tag,
        valor,
        unidade,
        link1,
        link2,
        link3,
        notaImagem,
        idTree,
        grupo,
        cor,
        corCodigo,
        corCodigoFont,
        ativo,
        idNotes
      ]);
}

NotesStruct createNotesStruct({
  DateTime? date,
  int? week,
  String? tree1,
  String? tree2,
  String? tree3,
  String? tree4,
  String? tree5,
  String? tree6,
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
  DocumentReference? idTree,
  String? grupo,
  String? cor,
  String? corCodigo,
  String? corCodigoFont,
  int? ativo,
  DocumentReference? idNotes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotesStruct(
      date: date,
      week: week,
      tree1: tree1,
      tree2: tree2,
      tree3: tree3,
      tree4: tree4,
      tree5: tree5,
      tree6: tree6,
      ordem: ordem,
      descricao: descricao,
      atalho: atalho,
      imagem: imagem,
      nivel: nivel,
      flag: flag,
      nota: nota,
      hour: hour,
      duration: duration,
      weekDay: weekDay,
      year: year,
      tag: tag,
      valor: valor,
      unidade: unidade,
      link1: link1,
      link2: link2,
      link3: link3,
      notaImagem: notaImagem,
      idTree: idTree,
      grupo: grupo,
      cor: cor,
      corCodigo: corCodigo,
      corCodigoFont: corCodigoFont,
      ativo: ativo,
      idNotes: idNotes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotesStruct? updateNotesStruct(
  NotesStruct? notes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotesStructData(
  Map<String, dynamic> firestoreData,
  NotesStruct? notes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notes == null) {
    return;
  }
  if (notes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notesData = getNotesFirestoreData(notes, forFieldValue);
  final nestedData = notesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = notes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotesFirestoreData(
  NotesStruct? notes, [
  bool forFieldValue = false,
]) {
  if (notes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notes.toMap());

  // Add any Firestore field values
  notes.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotesListFirestoreData(
  List<NotesStruct>? notess,
) =>
    notess?.map((e) => getNotesFirestoreData(e, true)).toList() ?? [];
