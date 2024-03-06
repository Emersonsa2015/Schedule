// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TreeStruct extends FFFirebaseStruct {
  TreeStruct({
    DocumentReference? idTree,
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
    double? soma,
    double? contador,
    double? media,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idTree = idTree,
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
        _soma = soma,
        _contador = contador,
        _media = media,
        super(firestoreUtilData);

  // "idTree" field.
  DocumentReference? _idTree;
  DocumentReference? get idTree => _idTree;
  set idTree(DocumentReference? val) => _idTree = val;
  bool hasIdTree() => _idTree != null;

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

  // "Soma" field.
  double? _soma;
  double get soma => _soma ?? 0.0;
  set soma(double? val) => _soma = val;
  void incrementSoma(double amount) => _soma = soma + amount;
  bool hasSoma() => _soma != null;

  // "Contador" field.
  double? _contador;
  double get contador => _contador ?? 0.0;
  set contador(double? val) => _contador = val;
  void incrementContador(double amount) => _contador = contador + amount;
  bool hasContador() => _contador != null;

  // "Media" field.
  double? _media;
  double get media => _media ?? 0.0;
  set media(double? val) => _media = val;
  void incrementMedia(double amount) => _media = media + amount;
  bool hasMedia() => _media != null;

  static TreeStruct fromMap(Map<String, dynamic> data) => TreeStruct(
        idTree: data['idTree'] as DocumentReference?,
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
        soma: castToType<double>(data['Soma']),
        contador: castToType<double>(data['Contador']),
        media: castToType<double>(data['Media']),
      );

  static TreeStruct? maybeFromMap(dynamic data) =>
      data is Map ? TreeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idTree': _idTree,
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
        'Soma': _soma,
        'Contador': _contador,
        'Media': _media,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idTree': serializeParam(
          _idTree,
          ParamType.DocumentReference,
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
        'Soma': serializeParam(
          _soma,
          ParamType.double,
        ),
        'Contador': serializeParam(
          _contador,
          ParamType.double,
        ),
        'Media': serializeParam(
          _media,
          ParamType.double,
        ),
      }.withoutNulls;

  static TreeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TreeStruct(
        idTree: deserializeParam(
          data['idTree'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Tree'],
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
        soma: deserializeParam(
          data['Soma'],
          ParamType.double,
          false,
        ),
        contador: deserializeParam(
          data['Contador'],
          ParamType.double,
          false,
        ),
        media: deserializeParam(
          data['Media'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TreeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TreeStruct &&
        idTree == other.idTree &&
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
        soma == other.soma &&
        contador == other.contador &&
        media == other.media;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idTree,
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
        soma,
        contador,
        media
      ]);
}

TreeStruct createTreeStruct({
  DocumentReference? idTree,
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
  double? soma,
  double? contador,
  double? media,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TreeStruct(
      idTree: idTree,
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
      soma: soma,
      contador: contador,
      media: media,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TreeStruct? updateTreeStruct(
  TreeStruct? tree, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tree
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTreeStructData(
  Map<String, dynamic> firestoreData,
  TreeStruct? tree,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tree == null) {
    return;
  }
  if (tree.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && tree.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final treeData = getTreeFirestoreData(tree, forFieldValue);
  final nestedData = treeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tree.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTreeFirestoreData(
  TreeStruct? tree, [
  bool forFieldValue = false,
]) {
  if (tree == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tree.toMap());

  // Add any Firestore field values
  tree.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTreeListFirestoreData(
  List<TreeStruct>? trees,
) =>
    trees?.map((e) => getTreeFirestoreData(e, true)).toList() ?? [];
