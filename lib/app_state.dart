import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Week = prefs.getInt('ff_Week') ?? _Week;
    });
    _safeInit(() {
      _WeekManual = prefs.getBool('ff_WeekManual') ?? _WeekManual;
    });
    _safeInit(() {
      _Plus = prefs.getString('ff_Plus') ?? _Plus;
    });
    _safeInit(() {
      _Notas = prefs.getStringList('ff_Notas') ?? _Notas;
    });
    _safeInit(() {
      _FavoritosX = prefs.getString('ff_FavoritosX') ?? _FavoritosX;
    });
    _safeInit(() {
      _FavoritosDescricao =
          prefs.getString('ff_FavoritosDescricao') ?? _FavoritosDescricao;
    });
    _safeInit(() {
      _FavoritosId = prefs.getString('ff_FavoritosId')?.ref ?? _FavoritosId;
    });
    _safeInit(() {
      _FavoritosIdMemo =
          prefs.getString('ff_FavoritosIdMemo')?.ref ?? _FavoritosIdMemo;
    });
    _safeInit(() {
      _DataIni = prefs.containsKey('ff_DataIni')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_DataIni')!)
          : _DataIni;
    });
    _safeInit(() {
      _DataFim = prefs.containsKey('ff_DataFim')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_DataFim')!)
          : _DataFim;
    });
    _safeInit(() {
      _AnoMemo = prefs.getInt('ff_AnoMemo') ?? _AnoMemo;
    });
    _safeInit(() {
      _yearTree1R = prefs.getStringList('ff_yearTree1R') ?? _yearTree1R;
    });
    _safeInit(() {
      _yearWeekR =
          prefs.getStringList('ff_yearWeekR')?.map(int.parse).toList() ??
              _yearWeekR;
    });
    _safeInit(() {
      _yearTipoR = prefs.getStringList('ff_yearTipoR') ?? _yearTipoR;
    });
    _safeInit(() {
      _yearDescricaoR =
          prefs.getStringList('ff_yearDescricaoR') ?? _yearDescricaoR;
    });
    _safeInit(() {
      _yearImagemR = prefs.getStringList('ff_yearImagemR') ?? _yearImagemR;
    });
    _safeInit(() {
      _yearNotaR =
          prefs.getStringList('ff_yearNotaR')?.map(double.parse).toList() ??
              _yearNotaR;
    });
    _safeInit(() {
      _yearIdR =
          prefs.getStringList('ff_yearIdR')?.map((path) => path.ref).toList() ??
              _yearIdR;
    });
    _safeInit(() {
      _yearMedia =
          prefs.getStringList('ff_yearMedia')?.map(double.parse).toList() ??
              _yearMedia;
    });
    _safeInit(() {
      _yearContador =
          prefs.getStringList('ff_yearContador')?.map(int.parse).toList() ??
              _yearContador;
    });
    _safeInit(() {
      _yearReg = prefs.getStringList('ff_yearReg')?.map(int.parse).toList() ??
          _yearReg;
    });
    _safeInit(() {
      _yearUso =
          prefs.getStringList('ff_yearUso')?.map(double.parse).toList() ??
              _yearUso;
    });
    _safeInit(() {
      _yearMediaMesG5 = prefs
              .getStringList('ff_yearMediaMesG5')
              ?.map(double.parse)
              .toList() ??
          _yearMediaMesG5;
    });
    _safeInit(() {
      _notesDescricao =
          prefs.getStringList('ff_notesDescricao') ?? _notesDescricao;
    });
    _safeInit(() {
      _notesOrdem =
          prefs.getStringList('ff_notesOrdem')?.map(int.parse).toList() ??
              _notesOrdem;
    });
    _safeInit(() {
      _notesNota =
          prefs.getStringList('ff_notesNota')?.map(double.parse).toList() ??
              _notesNota;
    });
    _safeInit(() {
      _notesImagem = prefs.getStringList('ff_notesImagem') ?? _notesImagem;
    });
    _safeInit(() {
      _notesImagem64 =
          prefs.getStringList('ff_notesImagem64') ?? _notesImagem64;
    });
    _safeInit(() {
      _notesId =
          prefs.getStringList('ff_notesId')?.map((path) => path.ref).toList() ??
              _notesId;
    });
    _safeInit(() {
      _notesList =
          prefs.getStringList('ff_notesList')?.map(int.parse).toList() ??
              _notesList;
    });
    _safeInit(() {
      _treeOrdem = prefs.getStringList('ff_treeOrdem') ?? _treeOrdem;
    });
    _safeInit(() {
      _treeImage64 = prefs.getStringList('ff_treeImage64') ?? _treeImage64;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _idtree;
  DocumentReference? get idtree => _idtree;
  set idtree(DocumentReference? value) {
    _idtree = value;
  }

  String _ImageFlag = '';
  String get ImageFlag => _ImageFlag;
  set ImageFlag(String value) {
    _ImageFlag = value;
  }

  String _Nivel = '';
  String get Nivel => _Nivel;
  set Nivel(String value) {
    _Nivel = value;
  }

  bool _Settings = false;
  bool get Settings => _Settings;
  set Settings(bool value) {
    _Settings = value;
  }

  String _SettingsPatch = '';
  String get SettingsPatch => _SettingsPatch;
  set SettingsPatch(String value) {
    _SettingsPatch = value;
  }

  NotesStruct _VarNotes = NotesStruct();
  NotesStruct get VarNotes => _VarNotes;
  set VarNotes(NotesStruct value) {
    _VarNotes = value;
  }

  void updateVarNotesStruct(Function(NotesStruct) updateFn) {
    updateFn(_VarNotes);
  }

  int _Week = 0;
  int get Week => _Week;
  set Week(int value) {
    _Week = value;
    prefs.setInt('ff_Week', value);
  }

  bool _WeekManual = false;
  bool get WeekManual => _WeekManual;
  set WeekManual(bool value) {
    _WeekManual = value;
    prefs.setBool('ff_WeekManual', value);
  }

  String _Plus =
      'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Plus.jpg?alt=media&token=ab95b985-7cdb-4f7a-9363-4994dd70cbc1';
  String get Plus => _Plus;
  set Plus(String value) {
    _Plus = value;
    prefs.setString('ff_Plus', value);
  }

  List<String> _Notas = [
    'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/number-0-circle.512x510.png?alt=media&token=b8be4270-23ed-40c5-a848-b256c85284dd',
    'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/number-1-circle.512x510.png?alt=media&token=0ab76423-458f-455d-ba5b-ce37a4f055f8',
    'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/number-2-circle.512x510.png?alt=media&token=083efc03-3e49-4d33-b93f-f63388d64de5',
    'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/number-3-circle.512x510.png?alt=media&token=317c5906-da54-415c-8c54-758fd17ceae4',
    'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/number-4-circle.512x510.png?alt=media&token=a15b6f6c-e514-4f46-a27f-63e5dc4021fc',
    'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/number-5-circle.512x510.png?alt=media&token=1ef7ac6f-cb89-40c8-83f8-74d0d3637f64'
  ];
  List<String> get Notas => _Notas;
  set Notas(List<String> value) {
    _Notas = value;
    prefs.setStringList('ff_Notas', value);
  }

  void addToNotas(String value) {
    _Notas.add(value);
    prefs.setStringList('ff_Notas', _Notas);
  }

  void removeFromNotas(String value) {
    _Notas.remove(value);
    prefs.setStringList('ff_Notas', _Notas);
  }

  void removeAtIndexFromNotas(int index) {
    _Notas.removeAt(index);
    prefs.setStringList('ff_Notas', _Notas);
  }

  void updateNotasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Notas[index] = updateFn(_Notas[index]);
    prefs.setStringList('ff_Notas', _Notas);
  }

  void insertAtIndexInNotas(int index, String value) {
    _Notas.insert(index, value);
    prefs.setStringList('ff_Notas', _Notas);
  }

  String _EntryFlag = '';
  String get EntryFlag => _EntryFlag;
  set EntryFlag(String value) {
    _EntryFlag = value;
  }

  DocumentReference? _idNotes;
  DocumentReference? get idNotes => _idNotes;
  set idNotes(DocumentReference? value) {
    _idNotes = value;
  }

  List<TreeStruct> _VarTree = [];
  List<TreeStruct> get VarTree => _VarTree;
  set VarTree(List<TreeStruct> value) {
    _VarTree = value;
  }

  void addToVarTree(TreeStruct value) {
    _VarTree.add(value);
  }

  void removeFromVarTree(TreeStruct value) {
    _VarTree.remove(value);
  }

  void removeAtIndexFromVarTree(int index) {
    _VarTree.removeAt(index);
  }

  void updateVarTreeAtIndex(
    int index,
    TreeStruct Function(TreeStruct) updateFn,
  ) {
    _VarTree[index] = updateFn(_VarTree[index]);
  }

  void insertAtIndexInVarTree(int index, TreeStruct value) {
    _VarTree.insert(index, value);
  }

  int _CabecCount = 0;
  int get CabecCount => _CabecCount;
  set CabecCount(int value) {
    _CabecCount = value;
  }

  int _CabecIndex = 0;
  int get CabecIndex => _CabecIndex;
  set CabecIndex(int value) {
    _CabecIndex = value;
  }

  String _Password = '';
  String get Password => _Password;
  set Password(String value) {
    _Password = value;
  }

  bool _FlagGridView = false;
  bool get FlagGridView => _FlagGridView;
  set FlagGridView(bool value) {
    _FlagGridView = value;
  }

  String _filtroNotes = '';
  String get filtroNotes => _filtroNotes;
  set filtroNotes(String value) {
    _filtroNotes = value;
  }

  int _sistemaFsize = 0;
  int get sistemaFsize => _sistemaFsize;
  set sistemaFsize(int value) {
    _sistemaFsize = value;
  }

  String _sistemaFtype = '';
  String get sistemaFtype => _sistemaFtype;
  set sistemaFtype(String value) {
    _sistemaFtype = value;
  }

  bool _flagFiltroNotes = false;
  bool get flagFiltroNotes => _flagFiltroNotes;
  set flagFiltroNotes(bool value) {
    _flagFiltroNotes = value;
  }

  List<double> _EixoX = [];
  List<double> get EixoX => _EixoX;
  set EixoX(List<double> value) {
    _EixoX = value;
  }

  void addToEixoX(double value) {
    _EixoX.add(value);
  }

  void removeFromEixoX(double value) {
    _EixoX.remove(value);
  }

  void removeAtIndexFromEixoX(int index) {
    _EixoX.removeAt(index);
  }

  void updateEixoXAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _EixoX[index] = updateFn(_EixoX[index]);
  }

  void insertAtIndexInEixoX(int index, double value) {
    _EixoX.insert(index, value);
  }

  List<double> _EixoY = [];
  List<double> get EixoY => _EixoY;
  set EixoY(List<double> value) {
    _EixoY = value;
  }

  void addToEixoY(double value) {
    _EixoY.add(value);
  }

  void removeFromEixoY(double value) {
    _EixoY.remove(value);
  }

  void removeAtIndexFromEixoY(int index) {
    _EixoY.removeAt(index);
  }

  void updateEixoYAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _EixoY[index] = updateFn(_EixoY[index]);
  }

  void insertAtIndexInEixoY(int index, double value) {
    _EixoY.insert(index, value);
  }

  List<String> _EixoFeedback = [];
  List<String> get EixoFeedback => _EixoFeedback;
  set EixoFeedback(List<String> value) {
    _EixoFeedback = value;
  }

  void addToEixoFeedback(String value) {
    _EixoFeedback.add(value);
  }

  void removeFromEixoFeedback(String value) {
    _EixoFeedback.remove(value);
  }

  void removeAtIndexFromEixoFeedback(int index) {
    _EixoFeedback.removeAt(index);
  }

  void updateEixoFeedbackAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _EixoFeedback[index] = updateFn(_EixoFeedback[index]);
  }

  void insertAtIndexInEixoFeedback(int index, String value) {
    _EixoFeedback.insert(index, value);
  }

  List<double> _EixoXSem = [];
  List<double> get EixoXSem => _EixoXSem;
  set EixoXSem(List<double> value) {
    _EixoXSem = value;
  }

  void addToEixoXSem(double value) {
    _EixoXSem.add(value);
  }

  void removeFromEixoXSem(double value) {
    _EixoXSem.remove(value);
  }

  void removeAtIndexFromEixoXSem(int index) {
    _EixoXSem.removeAt(index);
  }

  void updateEixoXSemAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _EixoXSem[index] = updateFn(_EixoXSem[index]);
  }

  void insertAtIndexInEixoXSem(int index, double value) {
    _EixoXSem.insert(index, value);
  }

  List<double> _EixoYSem = [];
  List<double> get EixoYSem => _EixoYSem;
  set EixoYSem(List<double> value) {
    _EixoYSem = value;
  }

  void addToEixoYSem(double value) {
    _EixoYSem.add(value);
  }

  void removeFromEixoYSem(double value) {
    _EixoYSem.remove(value);
  }

  void removeAtIndexFromEixoYSem(int index) {
    _EixoYSem.removeAt(index);
  }

  void updateEixoYSemAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _EixoYSem[index] = updateFn(_EixoYSem[index]);
  }

  void insertAtIndexInEixoYSem(int index, double value) {
    _EixoYSem.insert(index, value);
  }

  List<String> _EixoFeedbackSem = [];
  List<String> get EixoFeedbackSem => _EixoFeedbackSem;
  set EixoFeedbackSem(List<String> value) {
    _EixoFeedbackSem = value;
  }

  void addToEixoFeedbackSem(String value) {
    _EixoFeedbackSem.add(value);
  }

  void removeFromEixoFeedbackSem(String value) {
    _EixoFeedbackSem.remove(value);
  }

  void removeAtIndexFromEixoFeedbackSem(int index) {
    _EixoFeedbackSem.removeAt(index);
  }

  void updateEixoFeedbackSemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _EixoFeedbackSem[index] = updateFn(_EixoFeedbackSem[index]);
  }

  void insertAtIndexInEixoFeedbackSem(int index, String value) {
    _EixoFeedbackSem.insert(index, value);
  }

  List<double> _EixoXMes = [];
  List<double> get EixoXMes => _EixoXMes;
  set EixoXMes(List<double> value) {
    _EixoXMes = value;
  }

  void addToEixoXMes(double value) {
    _EixoXMes.add(value);
  }

  void removeFromEixoXMes(double value) {
    _EixoXMes.remove(value);
  }

  void removeAtIndexFromEixoXMes(int index) {
    _EixoXMes.removeAt(index);
  }

  void updateEixoXMesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _EixoXMes[index] = updateFn(_EixoXMes[index]);
  }

  void insertAtIndexInEixoXMes(int index, double value) {
    _EixoXMes.insert(index, value);
  }

  List<double> _EixoYMes = [];
  List<double> get EixoYMes => _EixoYMes;
  set EixoYMes(List<double> value) {
    _EixoYMes = value;
  }

  void addToEixoYMes(double value) {
    _EixoYMes.add(value);
  }

  void removeFromEixoYMes(double value) {
    _EixoYMes.remove(value);
  }

  void removeAtIndexFromEixoYMes(int index) {
    _EixoYMes.removeAt(index);
  }

  void updateEixoYMesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _EixoYMes[index] = updateFn(_EixoYMes[index]);
  }

  void insertAtIndexInEixoYMes(int index, double value) {
    _EixoYMes.insert(index, value);
  }

  List<String> _EixoFeedbackMes = [];
  List<String> get EixoFeedbackMes => _EixoFeedbackMes;
  set EixoFeedbackMes(List<String> value) {
    _EixoFeedbackMes = value;
  }

  void addToEixoFeedbackMes(String value) {
    _EixoFeedbackMes.add(value);
  }

  void removeFromEixoFeedbackMes(String value) {
    _EixoFeedbackMes.remove(value);
  }

  void removeAtIndexFromEixoFeedbackMes(int index) {
    _EixoFeedbackMes.removeAt(index);
  }

  void updateEixoFeedbackMesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _EixoFeedbackMes[index] = updateFn(_EixoFeedbackMes[index]);
  }

  void insertAtIndexInEixoFeedbackMes(int index, String value) {
    _EixoFeedbackMes.insert(index, value);
  }

  String _flagChat = '';
  String get flagChat => _flagChat;
  set flagChat(String value) {
    _flagChat = value;
  }

  List<String> _Feedback = [];
  List<String> get Feedback => _Feedback;
  set Feedback(List<String> value) {
    _Feedback = value;
  }

  void addToFeedback(String value) {
    _Feedback.add(value);
  }

  void removeFromFeedback(String value) {
    _Feedback.remove(value);
  }

  void removeAtIndexFromFeedback(int index) {
    _Feedback.removeAt(index);
  }

  void updateFeedbackAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _Feedback[index] = updateFn(_Feedback[index]);
  }

  void insertAtIndexInFeedback(int index, String value) {
    _Feedback.insert(index, value);
  }

  double _crudOld = 0.0;
  double get crudOld => _crudOld;
  set crudOld(double value) {
    _crudOld = value;
  }

  double _crudNew = 0.0;
  double get crudNew => _crudNew;
  set crudNew(double value) {
    _crudNew = value;
  }

  int _crudLoop = 0;
  int get crudLoop => _crudLoop;
  set crudLoop(int value) {
    _crudLoop = value;
  }

  int _crudLoopContador = 0;
  int get crudLoopContador => _crudLoopContador;
  set crudLoopContador(int value) {
    _crudLoopContador = value;
  }

  List<DocumentReference> _crudId = [];
  List<DocumentReference> get crudId => _crudId;
  set crudId(List<DocumentReference> value) {
    _crudId = value;
  }

  void addToCrudId(DocumentReference value) {
    _crudId.add(value);
  }

  void removeFromCrudId(DocumentReference value) {
    _crudId.remove(value);
  }

  void removeAtIndexFromCrudId(int index) {
    _crudId.removeAt(index);
  }

  void updateCrudIdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _crudId[index] = updateFn(_crudId[index]);
  }

  void insertAtIndexInCrudId(int index, DocumentReference value) {
    _crudId.insert(index, value);
  }

  List<String> _crudDescricao = [];
  List<String> get crudDescricao => _crudDescricao;
  set crudDescricao(List<String> value) {
    _crudDescricao = value;
  }

  void addToCrudDescricao(String value) {
    _crudDescricao.add(value);
  }

  void removeFromCrudDescricao(String value) {
    _crudDescricao.remove(value);
  }

  void removeAtIndexFromCrudDescricao(int index) {
    _crudDescricao.removeAt(index);
  }

  void updateCrudDescricaoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudDescricao[index] = updateFn(_crudDescricao[index]);
  }

  void insertAtIndexInCrudDescricao(int index, String value) {
    _crudDescricao.insert(index, value);
  }

  List<String> _crudTree1 = [];
  List<String> get crudTree1 => _crudTree1;
  set crudTree1(List<String> value) {
    _crudTree1 = value;
  }

  void addToCrudTree1(String value) {
    _crudTree1.add(value);
  }

  void removeFromCrudTree1(String value) {
    _crudTree1.remove(value);
  }

  void removeAtIndexFromCrudTree1(int index) {
    _crudTree1.removeAt(index);
  }

  void updateCrudTree1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudTree1[index] = updateFn(_crudTree1[index]);
  }

  void insertAtIndexInCrudTree1(int index, String value) {
    _crudTree1.insert(index, value);
  }

  List<String> _crudTree2 = [];
  List<String> get crudTree2 => _crudTree2;
  set crudTree2(List<String> value) {
    _crudTree2 = value;
  }

  void addToCrudTree2(String value) {
    _crudTree2.add(value);
  }

  void removeFromCrudTree2(String value) {
    _crudTree2.remove(value);
  }

  void removeAtIndexFromCrudTree2(int index) {
    _crudTree2.removeAt(index);
  }

  void updateCrudTree2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudTree2[index] = updateFn(_crudTree2[index]);
  }

  void insertAtIndexInCrudTree2(int index, String value) {
    _crudTree2.insert(index, value);
  }

  List<String> _crudTree3 = [];
  List<String> get crudTree3 => _crudTree3;
  set crudTree3(List<String> value) {
    _crudTree3 = value;
  }

  void addToCrudTree3(String value) {
    _crudTree3.add(value);
  }

  void removeFromCrudTree3(String value) {
    _crudTree3.remove(value);
  }

  void removeAtIndexFromCrudTree3(int index) {
    _crudTree3.removeAt(index);
  }

  void updateCrudTree3AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudTree3[index] = updateFn(_crudTree3[index]);
  }

  void insertAtIndexInCrudTree3(int index, String value) {
    _crudTree3.insert(index, value);
  }

  List<String> _crudTree4 = [];
  List<String> get crudTree4 => _crudTree4;
  set crudTree4(List<String> value) {
    _crudTree4 = value;
  }

  void addToCrudTree4(String value) {
    _crudTree4.add(value);
  }

  void removeFromCrudTree4(String value) {
    _crudTree4.remove(value);
  }

  void removeAtIndexFromCrudTree4(int index) {
    _crudTree4.removeAt(index);
  }

  void updateCrudTree4AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudTree4[index] = updateFn(_crudTree4[index]);
  }

  void insertAtIndexInCrudTree4(int index, String value) {
    _crudTree4.insert(index, value);
  }

  List<String> _crudTree5 = [];
  List<String> get crudTree5 => _crudTree5;
  set crudTree5(List<String> value) {
    _crudTree5 = value;
  }

  void addToCrudTree5(String value) {
    _crudTree5.add(value);
  }

  void removeFromCrudTree5(String value) {
    _crudTree5.remove(value);
  }

  void removeAtIndexFromCrudTree5(int index) {
    _crudTree5.removeAt(index);
  }

  void updateCrudTree5AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudTree5[index] = updateFn(_crudTree5[index]);
  }

  void insertAtIndexInCrudTree5(int index, String value) {
    _crudTree5.insert(index, value);
  }

  List<String> _crudTree6 = [];
  List<String> get crudTree6 => _crudTree6;
  set crudTree6(List<String> value) {
    _crudTree6 = value;
  }

  void addToCrudTree6(String value) {
    _crudTree6.add(value);
  }

  void removeFromCrudTree6(String value) {
    _crudTree6.remove(value);
  }

  void removeAtIndexFromCrudTree6(int index) {
    _crudTree6.removeAt(index);
  }

  void updateCrudTree6AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudTree6[index] = updateFn(_crudTree6[index]);
  }

  void insertAtIndexInCrudTree6(int index, String value) {
    _crudTree6.insert(index, value);
  }

  List<String> _crudOrdem = [];
  List<String> get crudOrdem => _crudOrdem;
  set crudOrdem(List<String> value) {
    _crudOrdem = value;
  }

  void addToCrudOrdem(String value) {
    _crudOrdem.add(value);
  }

  void removeFromCrudOrdem(String value) {
    _crudOrdem.remove(value);
  }

  void removeAtIndexFromCrudOrdem(int index) {
    _crudOrdem.removeAt(index);
  }

  void updateCrudOrdemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudOrdem[index] = updateFn(_crudOrdem[index]);
  }

  void insertAtIndexInCrudOrdem(int index, String value) {
    _crudOrdem.insert(index, value);
  }

  List<String> _crudNivel = [];
  List<String> get crudNivel => _crudNivel;
  set crudNivel(List<String> value) {
    _crudNivel = value;
  }

  void addToCrudNivel(String value) {
    _crudNivel.add(value);
  }

  void removeFromCrudNivel(String value) {
    _crudNivel.remove(value);
  }

  void removeAtIndexFromCrudNivel(int index) {
    _crudNivel.removeAt(index);
  }

  void updateCrudNivelAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _crudNivel[index] = updateFn(_crudNivel[index]);
  }

  void insertAtIndexInCrudNivel(int index, String value) {
    _crudNivel.insert(index, value);
  }

  List<double> _crudContador = [];
  List<double> get crudContador => _crudContador;
  set crudContador(List<double> value) {
    _crudContador = value;
  }

  void addToCrudContador(double value) {
    _crudContador.add(value);
  }

  void removeFromCrudContador(double value) {
    _crudContador.remove(value);
  }

  void removeAtIndexFromCrudContador(int index) {
    _crudContador.removeAt(index);
  }

  void updateCrudContadorAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _crudContador[index] = updateFn(_crudContador[index]);
  }

  void insertAtIndexInCrudContador(int index, double value) {
    _crudContador.insert(index, value);
  }

  List<double> _crudSoma = [];
  List<double> get crudSoma => _crudSoma;
  set crudSoma(List<double> value) {
    _crudSoma = value;
  }

  void addToCrudSoma(double value) {
    _crudSoma.add(value);
  }

  void removeFromCrudSoma(double value) {
    _crudSoma.remove(value);
  }

  void removeAtIndexFromCrudSoma(int index) {
    _crudSoma.removeAt(index);
  }

  void updateCrudSomaAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _crudSoma[index] = updateFn(_crudSoma[index]);
  }

  void insertAtIndexInCrudSoma(int index, double value) {
    _crudSoma.insert(index, value);
  }

  List<double> _crudMedia = [];
  List<double> get crudMedia => _crudMedia;
  set crudMedia(List<double> value) {
    _crudMedia = value;
  }

  void addToCrudMedia(double value) {
    _crudMedia.add(value);
  }

  void removeFromCrudMedia(double value) {
    _crudMedia.remove(value);
  }

  void removeAtIndexFromCrudMedia(int index) {
    _crudMedia.removeAt(index);
  }

  void updateCrudMediaAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _crudMedia[index] = updateFn(_crudMedia[index]);
  }

  void insertAtIndexInCrudMedia(int index, double value) {
    _crudMedia.insert(index, value);
  }

  List<String> _yearTipo = [];
  List<String> get yearTipo => _yearTipo;
  set yearTipo(List<String> value) {
    _yearTipo = value;
  }

  void addToYearTipo(String value) {
    _yearTipo.add(value);
  }

  void removeFromYearTipo(String value) {
    _yearTipo.remove(value);
  }

  void removeAtIndexFromYearTipo(int index) {
    _yearTipo.removeAt(index);
  }

  void updateYearTipoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearTipo[index] = updateFn(_yearTipo[index]);
  }

  void insertAtIndexInYearTipo(int index, String value) {
    _yearTipo.insert(index, value);
  }

  List<String> _yearImg = [];
  List<String> get yearImg => _yearImg;
  set yearImg(List<String> value) {
    _yearImg = value;
  }

  void addToYearImg(String value) {
    _yearImg.add(value);
  }

  void removeFromYearImg(String value) {
    _yearImg.remove(value);
  }

  void removeAtIndexFromYearImg(int index) {
    _yearImg.removeAt(index);
  }

  void updateYearImgAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearImg[index] = updateFn(_yearImg[index]);
  }

  void insertAtIndexInYearImg(int index, String value) {
    _yearImg.insert(index, value);
  }

  List<String> _year1 = [];
  List<String> get year1 => _year1;
  set year1(List<String> value) {
    _year1 = value;
  }

  void addToYear1(String value) {
    _year1.add(value);
  }

  void removeFromYear1(String value) {
    _year1.remove(value);
  }

  void removeAtIndexFromYear1(int index) {
    _year1.removeAt(index);
  }

  void updateYear1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _year1[index] = updateFn(_year1[index]);
  }

  void insertAtIndexInYear1(int index, String value) {
    _year1.insert(index, value);
  }

  List<String> _year2 = [];
  List<String> get year2 => _year2;
  set year2(List<String> value) {
    _year2 = value;
  }

  void addToYear2(String value) {
    _year2.add(value);
  }

  void removeFromYear2(String value) {
    _year2.remove(value);
  }

  void removeAtIndexFromYear2(int index) {
    _year2.removeAt(index);
  }

  void updateYear2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _year2[index] = updateFn(_year2[index]);
  }

  void insertAtIndexInYear2(int index, String value) {
    _year2.insert(index, value);
  }

  List<YearLvStruct> _yearLv = [
    YearLvStruct.fromSerializableMap(jsonDecode(
        '{"yearTipo":"Hello Tipo 1","yearImg":"https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Religiao.jpg?alt=media&token=81fbe235-9890-4b22-81aa-4c17dc6ca509","year1":"Hello Year1 1","year2":"Hello Year2 1"}')),
    YearLvStruct.fromSerializableMap(jsonDecode(
        '{"yearTipo":"Hello Tipo 2","yearImg":"https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Sono.jpg?alt=media&token=c156064e-3461-4757-b549-cac1a400a1cf","year1":"Hello Year1 2","year2":"Hello Year2 2"}'))
  ];
  List<YearLvStruct> get yearLv => _yearLv;
  set yearLv(List<YearLvStruct> value) {
    _yearLv = value;
  }

  void addToYearLv(YearLvStruct value) {
    _yearLv.add(value);
  }

  void removeFromYearLv(YearLvStruct value) {
    _yearLv.remove(value);
  }

  void removeAtIndexFromYearLv(int index) {
    _yearLv.removeAt(index);
  }

  void updateYearLvAtIndex(
    int index,
    YearLvStruct Function(YearLvStruct) updateFn,
  ) {
    _yearLv[index] = updateFn(_yearLv[index]);
  }

  void insertAtIndexInYearLv(int index, YearLvStruct value) {
    _yearLv.insert(index, value);
  }

  List<String> _chartTipo = [];
  List<String> get chartTipo => _chartTipo;
  set chartTipo(List<String> value) {
    _chartTipo = value;
  }

  void addToChartTipo(String value) {
    _chartTipo.add(value);
  }

  void removeFromChartTipo(String value) {
    _chartTipo.remove(value);
  }

  void removeAtIndexFromChartTipo(int index) {
    _chartTipo.removeAt(index);
  }

  void updateChartTipoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _chartTipo[index] = updateFn(_chartTipo[index]);
  }

  void insertAtIndexInChartTipo(int index, String value) {
    _chartTipo.insert(index, value);
  }

  List<String> _chartTree1 = [];
  List<String> get chartTree1 => _chartTree1;
  set chartTree1(List<String> value) {
    _chartTree1 = value;
  }

  void addToChartTree1(String value) {
    _chartTree1.add(value);
  }

  void removeFromChartTree1(String value) {
    _chartTree1.remove(value);
  }

  void removeAtIndexFromChartTree1(int index) {
    _chartTree1.removeAt(index);
  }

  void updateChartTree1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _chartTree1[index] = updateFn(_chartTree1[index]);
  }

  void insertAtIndexInChartTree1(int index, String value) {
    _chartTree1.insert(index, value);
  }

  List<int> _chartNumero = [];
  List<int> get chartNumero => _chartNumero;
  set chartNumero(List<int> value) {
    _chartNumero = value;
  }

  void addToChartNumero(int value) {
    _chartNumero.add(value);
  }

  void removeFromChartNumero(int value) {
    _chartNumero.remove(value);
  }

  void removeAtIndexFromChartNumero(int index) {
    _chartNumero.removeAt(index);
  }

  void updateChartNumeroAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _chartNumero[index] = updateFn(_chartNumero[index]);
  }

  void insertAtIndexInChartNumero(int index, int value) {
    _chartNumero.insert(index, value);
  }

  List<String> _chartDescricao = [];
  List<String> get chartDescricao => _chartDescricao;
  set chartDescricao(List<String> value) {
    _chartDescricao = value;
  }

  void addToChartDescricao(String value) {
    _chartDescricao.add(value);
  }

  void removeFromChartDescricao(String value) {
    _chartDescricao.remove(value);
  }

  void removeAtIndexFromChartDescricao(int index) {
    _chartDescricao.removeAt(index);
  }

  void updateChartDescricaoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _chartDescricao[index] = updateFn(_chartDescricao[index]);
  }

  void insertAtIndexInChartDescricao(int index, String value) {
    _chartDescricao.insert(index, value);
  }

  List<String> _chartImagem = [];
  List<String> get chartImagem => _chartImagem;
  set chartImagem(List<String> value) {
    _chartImagem = value;
  }

  void addToChartImagem(String value) {
    _chartImagem.add(value);
  }

  void removeFromChartImagem(String value) {
    _chartImagem.remove(value);
  }

  void removeAtIndexFromChartImagem(int index) {
    _chartImagem.removeAt(index);
  }

  void updateChartImagemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _chartImagem[index] = updateFn(_chartImagem[index]);
  }

  void insertAtIndexInChartImagem(int index, String value) {
    _chartImagem.insert(index, value);
  }

  List<DocumentReference> _chartId = [];
  List<DocumentReference> get chartId => _chartId;
  set chartId(List<DocumentReference> value) {
    _chartId = value;
  }

  void addToChartId(DocumentReference value) {
    _chartId.add(value);
  }

  void removeFromChartId(DocumentReference value) {
    _chartId.remove(value);
  }

  void removeAtIndexFromChartId(int index) {
    _chartId.removeAt(index);
  }

  void updateChartIdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _chartId[index] = updateFn(_chartId[index]);
  }

  void insertAtIndexInChartId(int index, DocumentReference value) {
    _chartId.insert(index, value);
  }

  int _chartNumeroLv = 0;
  int get chartNumeroLv => _chartNumeroLv;
  set chartNumeroLv(int value) {
    _chartNumeroLv = value;
  }

  DocumentReference? _chartIdLv;
  DocumentReference? get chartIdLv => _chartIdLv;
  set chartIdLv(DocumentReference? value) {
    _chartIdLv = value;
  }

  int _chartIndexLv = 0;
  int get chartIndexLv => _chartIndexLv;
  set chartIndexLv(int value) {
    _chartIndexLv = value;
  }

  String _FlagPesquisa = '';
  String get FlagPesquisa => _FlagPesquisa;
  set FlagPesquisa(String value) {
    _FlagPesquisa = value;
  }

  String _Vazio = '';
  String get Vazio => _Vazio;
  set Vazio(String value) {
    _Vazio = value;
  }

  String _FavoritosX = '';
  String get FavoritosX => _FavoritosX;
  set FavoritosX(String value) {
    _FavoritosX = value;
    prefs.setString('ff_FavoritosX', value);
  }

  String _FavoritosDescricao = '';
  String get FavoritosDescricao => _FavoritosDescricao;
  set FavoritosDescricao(String value) {
    _FavoritosDescricao = value;
    prefs.setString('ff_FavoritosDescricao', value);
  }

  DocumentReference? _FavoritosId;
  DocumentReference? get FavoritosId => _FavoritosId;
  set FavoritosId(DocumentReference? value) {
    _FavoritosId = value;
    value != null
        ? prefs.setString('ff_FavoritosId', value.path)
        : prefs.remove('ff_FavoritosId');
  }

  DocumentReference? _FavoritosIdMemo;
  DocumentReference? get FavoritosIdMemo => _FavoritosIdMemo;
  set FavoritosIdMemo(DocumentReference? value) {
    _FavoritosIdMemo = value;
    value != null
        ? prefs.setString('ff_FavoritosIdMemo', value.path)
        : prefs.remove('ff_FavoritosIdMemo');
  }

  DateTime? _DataIni;
  DateTime? get DataIni => _DataIni;
  set DataIni(DateTime? value) {
    _DataIni = value;
    value != null
        ? prefs.setInt('ff_DataIni', value.millisecondsSinceEpoch)
        : prefs.remove('ff_DataIni');
  }

  DateTime? _DataFim;
  DateTime? get DataFim => _DataFim;
  set DataFim(DateTime? value) {
    _DataFim = value;
    value != null
        ? prefs.setInt('ff_DataFim', value.millisecondsSinceEpoch)
        : prefs.remove('ff_DataFim');
  }

  int _AnoMemo = 2023;
  int get AnoMemo => _AnoMemo;
  set AnoMemo(int value) {
    _AnoMemo = value;
    prefs.setInt('ff_AnoMemo', value);
  }

  String _grupoMemo = '';
  String get grupoMemo => _grupoMemo;
  set grupoMemo(String value) {
    _grupoMemo = value;
  }

  List<String> _yearTree1Week = [];
  List<String> get yearTree1Week => _yearTree1Week;
  set yearTree1Week(List<String> value) {
    _yearTree1Week = value;
  }

  void addToYearTree1Week(String value) {
    _yearTree1Week.add(value);
  }

  void removeFromYearTree1Week(String value) {
    _yearTree1Week.remove(value);
  }

  void removeAtIndexFromYearTree1Week(int index) {
    _yearTree1Week.removeAt(index);
  }

  void updateYearTree1WeekAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearTree1Week[index] = updateFn(_yearTree1Week[index]);
  }

  void insertAtIndexInYearTree1Week(int index, String value) {
    _yearTree1Week.insert(index, value);
  }

  List<String> _yearDate = [];
  List<String> get yearDate => _yearDate;
  set yearDate(List<String> value) {
    _yearDate = value;
  }

  void addToYearDate(String value) {
    _yearDate.add(value);
  }

  void removeFromYearDate(String value) {
    _yearDate.remove(value);
  }

  void removeAtIndexFromYearDate(int index) {
    _yearDate.removeAt(index);
  }

  void updateYearDateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearDate[index] = updateFn(_yearDate[index]);
  }

  void insertAtIndexInYearDate(int index, String value) {
    _yearDate.insert(index, value);
  }

  List<String> _yearDescricao = [];
  List<String> get yearDescricao => _yearDescricao;
  set yearDescricao(List<String> value) {
    _yearDescricao = value;
  }

  void addToYearDescricao(String value) {
    _yearDescricao.add(value);
  }

  void removeFromYearDescricao(String value) {
    _yearDescricao.remove(value);
  }

  void removeAtIndexFromYearDescricao(int index) {
    _yearDescricao.removeAt(index);
  }

  void updateYearDescricaoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearDescricao[index] = updateFn(_yearDescricao[index]);
  }

  void insertAtIndexInYearDescricao(int index, String value) {
    _yearDescricao.insert(index, value);
  }

  List<double> _yearNota = [];
  List<double> get yearNota => _yearNota;
  set yearNota(List<double> value) {
    _yearNota = value;
  }

  void addToYearNota(double value) {
    _yearNota.add(value);
  }

  void removeFromYearNota(double value) {
    _yearNota.remove(value);
  }

  void removeAtIndexFromYearNota(int index) {
    _yearNota.removeAt(index);
  }

  void updateYearNotaAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _yearNota[index] = updateFn(_yearNota[index]);
  }

  void insertAtIndexInYearNota(int index, double value) {
    _yearNota.insert(index, value);
  }

  List<String> _yearYear = [];
  List<String> get yearYear => _yearYear;
  set yearYear(List<String> value) {
    _yearYear = value;
  }

  void addToYearYear(String value) {
    _yearYear.add(value);
  }

  void removeFromYearYear(String value) {
    _yearYear.remove(value);
  }

  void removeAtIndexFromYearYear(int index) {
    _yearYear.removeAt(index);
  }

  void updateYearYearAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearYear[index] = updateFn(_yearYear[index]);
  }

  void insertAtIndexInYearYear(int index, String value) {
    _yearYear.insert(index, value);
  }

  List<String> _yearImagem = [];
  List<String> get yearImagem => _yearImagem;
  set yearImagem(List<String> value) {
    _yearImagem = value;
  }

  void addToYearImagem(String value) {
    _yearImagem.add(value);
  }

  void removeFromYearImagem(String value) {
    _yearImagem.remove(value);
  }

  void removeAtIndexFromYearImagem(int index) {
    _yearImagem.removeAt(index);
  }

  void updateYearImagemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearImagem[index] = updateFn(_yearImagem[index]);
  }

  void insertAtIndexInYearImagem(int index, String value) {
    _yearImagem.insert(index, value);
  }

  List<DocumentReference> _yearId = [];
  List<DocumentReference> get yearId => _yearId;
  set yearId(List<DocumentReference> value) {
    _yearId = value;
  }

  void addToYearId(DocumentReference value) {
    _yearId.add(value);
  }

  void removeFromYearId(DocumentReference value) {
    _yearId.remove(value);
  }

  void removeAtIndexFromYearId(int index) {
    _yearId.removeAt(index);
  }

  void updateYearIdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _yearId[index] = updateFn(_yearId[index]);
  }

  void insertAtIndexInYearId(int index, DocumentReference value) {
    _yearId.insert(index, value);
  }

  int _yearIndexAntes = 0;
  int get yearIndexAntes => _yearIndexAntes;
  set yearIndexAntes(int value) {
    _yearIndexAntes = value;
  }

  List<String> _yearTree1WeekD = [];
  List<String> get yearTree1WeekD => _yearTree1WeekD;
  set yearTree1WeekD(List<String> value) {
    _yearTree1WeekD = value;
  }

  void addToYearTree1WeekD(String value) {
    _yearTree1WeekD.add(value);
  }

  void removeFromYearTree1WeekD(String value) {
    _yearTree1WeekD.remove(value);
  }

  void removeAtIndexFromYearTree1WeekD(int index) {
    _yearTree1WeekD.removeAt(index);
  }

  void updateYearTree1WeekDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearTree1WeekD[index] = updateFn(_yearTree1WeekD[index]);
  }

  void insertAtIndexInYearTree1WeekD(int index, String value) {
    _yearTree1WeekD.insert(index, value);
  }

  List<String> _yearDateD = [];
  List<String> get yearDateD => _yearDateD;
  set yearDateD(List<String> value) {
    _yearDateD = value;
  }

  void addToYearDateD(String value) {
    _yearDateD.add(value);
  }

  void removeFromYearDateD(String value) {
    _yearDateD.remove(value);
  }

  void removeAtIndexFromYearDateD(int index) {
    _yearDateD.removeAt(index);
  }

  void updateYearDateDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearDateD[index] = updateFn(_yearDateD[index]);
  }

  void insertAtIndexInYearDateD(int index, String value) {
    _yearDateD.insert(index, value);
  }

  List<String> _yearDescricaoD = [];
  List<String> get yearDescricaoD => _yearDescricaoD;
  set yearDescricaoD(List<String> value) {
    _yearDescricaoD = value;
  }

  void addToYearDescricaoD(String value) {
    _yearDescricaoD.add(value);
  }

  void removeFromYearDescricaoD(String value) {
    _yearDescricaoD.remove(value);
  }

  void removeAtIndexFromYearDescricaoD(int index) {
    _yearDescricaoD.removeAt(index);
  }

  void updateYearDescricaoDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearDescricaoD[index] = updateFn(_yearDescricaoD[index]);
  }

  void insertAtIndexInYearDescricaoD(int index, String value) {
    _yearDescricaoD.insert(index, value);
  }

  List<double> _yearNotaD = [];
  List<double> get yearNotaD => _yearNotaD;
  set yearNotaD(List<double> value) {
    _yearNotaD = value;
  }

  void addToYearNotaD(double value) {
    _yearNotaD.add(value);
  }

  void removeFromYearNotaD(double value) {
    _yearNotaD.remove(value);
  }

  void removeAtIndexFromYearNotaD(int index) {
    _yearNotaD.removeAt(index);
  }

  void updateYearNotaDAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _yearNotaD[index] = updateFn(_yearNotaD[index]);
  }

  void insertAtIndexInYearNotaD(int index, double value) {
    _yearNotaD.insert(index, value);
  }

  List<String> _yearYearD = [];
  List<String> get yearYearD => _yearYearD;
  set yearYearD(List<String> value) {
    _yearYearD = value;
  }

  void addToYearYearD(String value) {
    _yearYearD.add(value);
  }

  void removeFromYearYearD(String value) {
    _yearYearD.remove(value);
  }

  void removeAtIndexFromYearYearD(int index) {
    _yearYearD.removeAt(index);
  }

  void updateYearYearDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearYearD[index] = updateFn(_yearYearD[index]);
  }

  void insertAtIndexInYearYearD(int index, String value) {
    _yearYearD.insert(index, value);
  }

  List<String> _yearImagemD = [];
  List<String> get yearImagemD => _yearImagemD;
  set yearImagemD(List<String> value) {
    _yearImagemD = value;
  }

  void addToYearImagemD(String value) {
    _yearImagemD.add(value);
  }

  void removeFromYearImagemD(String value) {
    _yearImagemD.remove(value);
  }

  void removeAtIndexFromYearImagemD(int index) {
    _yearImagemD.removeAt(index);
  }

  void updateYearImagemDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearImagemD[index] = updateFn(_yearImagemD[index]);
  }

  void insertAtIndexInYearImagemD(int index, String value) {
    _yearImagemD.insert(index, value);
  }

  List<DocumentReference> _yearIdD = [];
  List<DocumentReference> get yearIdD => _yearIdD;
  set yearIdD(List<DocumentReference> value) {
    _yearIdD = value;
  }

  void addToYearIdD(DocumentReference value) {
    _yearIdD.add(value);
  }

  void removeFromYearIdD(DocumentReference value) {
    _yearIdD.remove(value);
  }

  void removeAtIndexFromYearIdD(int index) {
    _yearIdD.removeAt(index);
  }

  void updateYearIdDAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _yearIdD[index] = updateFn(_yearIdD[index]);
  }

  void insertAtIndexInYearIdD(int index, DocumentReference value) {
    _yearIdD.insert(index, value);
  }

  int _yearIndexAntesD = 0;
  int get yearIndexAntesD => _yearIndexAntesD;
  set yearIndexAntesD(int value) {
    _yearIndexAntesD = value;
  }

  int _yearIndexD = 0;
  int get yearIndexD => _yearIndexD;
  set yearIndexD(int value) {
    _yearIndexD = value;
  }

  List<String> _yearTree1R = [];
  List<String> get yearTree1R => _yearTree1R;
  set yearTree1R(List<String> value) {
    _yearTree1R = value;
    prefs.setStringList('ff_yearTree1R', value);
  }

  void addToYearTree1R(String value) {
    _yearTree1R.add(value);
    prefs.setStringList('ff_yearTree1R', _yearTree1R);
  }

  void removeFromYearTree1R(String value) {
    _yearTree1R.remove(value);
    prefs.setStringList('ff_yearTree1R', _yearTree1R);
  }

  void removeAtIndexFromYearTree1R(int index) {
    _yearTree1R.removeAt(index);
    prefs.setStringList('ff_yearTree1R', _yearTree1R);
  }

  void updateYearTree1RAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearTree1R[index] = updateFn(_yearTree1R[index]);
    prefs.setStringList('ff_yearTree1R', _yearTree1R);
  }

  void insertAtIndexInYearTree1R(int index, String value) {
    _yearTree1R.insert(index, value);
    prefs.setStringList('ff_yearTree1R', _yearTree1R);
  }

  List<int> _yearWeekR = [];
  List<int> get yearWeekR => _yearWeekR;
  set yearWeekR(List<int> value) {
    _yearWeekR = value;
    prefs.setStringList(
        'ff_yearWeekR', value.map((x) => x.toString()).toList());
  }

  void addToYearWeekR(int value) {
    _yearWeekR.add(value);
    prefs.setStringList(
        'ff_yearWeekR', _yearWeekR.map((x) => x.toString()).toList());
  }

  void removeFromYearWeekR(int value) {
    _yearWeekR.remove(value);
    prefs.setStringList(
        'ff_yearWeekR', _yearWeekR.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYearWeekR(int index) {
    _yearWeekR.removeAt(index);
    prefs.setStringList(
        'ff_yearWeekR', _yearWeekR.map((x) => x.toString()).toList());
  }

  void updateYearWeekRAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _yearWeekR[index] = updateFn(_yearWeekR[index]);
    prefs.setStringList(
        'ff_yearWeekR', _yearWeekR.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYearWeekR(int index, int value) {
    _yearWeekR.insert(index, value);
    prefs.setStringList(
        'ff_yearWeekR', _yearWeekR.map((x) => x.toString()).toList());
  }

  List<String> _yearTipoR = [];
  List<String> get yearTipoR => _yearTipoR;
  set yearTipoR(List<String> value) {
    _yearTipoR = value;
    prefs.setStringList('ff_yearTipoR', value);
  }

  void addToYearTipoR(String value) {
    _yearTipoR.add(value);
    prefs.setStringList('ff_yearTipoR', _yearTipoR);
  }

  void removeFromYearTipoR(String value) {
    _yearTipoR.remove(value);
    prefs.setStringList('ff_yearTipoR', _yearTipoR);
  }

  void removeAtIndexFromYearTipoR(int index) {
    _yearTipoR.removeAt(index);
    prefs.setStringList('ff_yearTipoR', _yearTipoR);
  }

  void updateYearTipoRAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearTipoR[index] = updateFn(_yearTipoR[index]);
    prefs.setStringList('ff_yearTipoR', _yearTipoR);
  }

  void insertAtIndexInYearTipoR(int index, String value) {
    _yearTipoR.insert(index, value);
    prefs.setStringList('ff_yearTipoR', _yearTipoR);
  }

  List<String> _yearDescricaoR = [];
  List<String> get yearDescricaoR => _yearDescricaoR;
  set yearDescricaoR(List<String> value) {
    _yearDescricaoR = value;
    prefs.setStringList('ff_yearDescricaoR', value);
  }

  void addToYearDescricaoR(String value) {
    _yearDescricaoR.add(value);
    prefs.setStringList('ff_yearDescricaoR', _yearDescricaoR);
  }

  void removeFromYearDescricaoR(String value) {
    _yearDescricaoR.remove(value);
    prefs.setStringList('ff_yearDescricaoR', _yearDescricaoR);
  }

  void removeAtIndexFromYearDescricaoR(int index) {
    _yearDescricaoR.removeAt(index);
    prefs.setStringList('ff_yearDescricaoR', _yearDescricaoR);
  }

  void updateYearDescricaoRAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearDescricaoR[index] = updateFn(_yearDescricaoR[index]);
    prefs.setStringList('ff_yearDescricaoR', _yearDescricaoR);
  }

  void insertAtIndexInYearDescricaoR(int index, String value) {
    _yearDescricaoR.insert(index, value);
    prefs.setStringList('ff_yearDescricaoR', _yearDescricaoR);
  }

  List<String> _yearImagemR = [];
  List<String> get yearImagemR => _yearImagemR;
  set yearImagemR(List<String> value) {
    _yearImagemR = value;
    prefs.setStringList('ff_yearImagemR', value);
  }

  void addToYearImagemR(String value) {
    _yearImagemR.add(value);
    prefs.setStringList('ff_yearImagemR', _yearImagemR);
  }

  void removeFromYearImagemR(String value) {
    _yearImagemR.remove(value);
    prefs.setStringList('ff_yearImagemR', _yearImagemR);
  }

  void removeAtIndexFromYearImagemR(int index) {
    _yearImagemR.removeAt(index);
    prefs.setStringList('ff_yearImagemR', _yearImagemR);
  }

  void updateYearImagemRAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _yearImagemR[index] = updateFn(_yearImagemR[index]);
    prefs.setStringList('ff_yearImagemR', _yearImagemR);
  }

  void insertAtIndexInYearImagemR(int index, String value) {
    _yearImagemR.insert(index, value);
    prefs.setStringList('ff_yearImagemR', _yearImagemR);
  }

  List<double> _yearNotaR = [];
  List<double> get yearNotaR => _yearNotaR;
  set yearNotaR(List<double> value) {
    _yearNotaR = value;
    prefs.setStringList(
        'ff_yearNotaR', value.map((x) => x.toString()).toList());
  }

  void addToYearNotaR(double value) {
    _yearNotaR.add(value);
    prefs.setStringList(
        'ff_yearNotaR', _yearNotaR.map((x) => x.toString()).toList());
  }

  void removeFromYearNotaR(double value) {
    _yearNotaR.remove(value);
    prefs.setStringList(
        'ff_yearNotaR', _yearNotaR.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYearNotaR(int index) {
    _yearNotaR.removeAt(index);
    prefs.setStringList(
        'ff_yearNotaR', _yearNotaR.map((x) => x.toString()).toList());
  }

  void updateYearNotaRAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _yearNotaR[index] = updateFn(_yearNotaR[index]);
    prefs.setStringList(
        'ff_yearNotaR', _yearNotaR.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYearNotaR(int index, double value) {
    _yearNotaR.insert(index, value);
    prefs.setStringList(
        'ff_yearNotaR', _yearNotaR.map((x) => x.toString()).toList());
  }

  List<DocumentReference> _yearIdR = [];
  List<DocumentReference> get yearIdR => _yearIdR;
  set yearIdR(List<DocumentReference> value) {
    _yearIdR = value;
    prefs.setStringList('ff_yearIdR', value.map((x) => x.path).toList());
  }

  void addToYearIdR(DocumentReference value) {
    _yearIdR.add(value);
    prefs.setStringList('ff_yearIdR', _yearIdR.map((x) => x.path).toList());
  }

  void removeFromYearIdR(DocumentReference value) {
    _yearIdR.remove(value);
    prefs.setStringList('ff_yearIdR', _yearIdR.map((x) => x.path).toList());
  }

  void removeAtIndexFromYearIdR(int index) {
    _yearIdR.removeAt(index);
    prefs.setStringList('ff_yearIdR', _yearIdR.map((x) => x.path).toList());
  }

  void updateYearIdRAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _yearIdR[index] = updateFn(_yearIdR[index]);
    prefs.setStringList('ff_yearIdR', _yearIdR.map((x) => x.path).toList());
  }

  void insertAtIndexInYearIdR(int index, DocumentReference value) {
    _yearIdR.insert(index, value);
    prefs.setStringList('ff_yearIdR', _yearIdR.map((x) => x.path).toList());
  }

  List<double> _yearMedia = [0.0, 0.0, 0.0, 0.0, 0.0];
  List<double> get yearMedia => _yearMedia;
  set yearMedia(List<double> value) {
    _yearMedia = value;
    prefs.setStringList(
        'ff_yearMedia', value.map((x) => x.toString()).toList());
  }

  void addToYearMedia(double value) {
    _yearMedia.add(value);
    prefs.setStringList(
        'ff_yearMedia', _yearMedia.map((x) => x.toString()).toList());
  }

  void removeFromYearMedia(double value) {
    _yearMedia.remove(value);
    prefs.setStringList(
        'ff_yearMedia', _yearMedia.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYearMedia(int index) {
    _yearMedia.removeAt(index);
    prefs.setStringList(
        'ff_yearMedia', _yearMedia.map((x) => x.toString()).toList());
  }

  void updateYearMediaAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _yearMedia[index] = updateFn(_yearMedia[index]);
    prefs.setStringList(
        'ff_yearMedia', _yearMedia.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYearMedia(int index, double value) {
    _yearMedia.insert(index, value);
    prefs.setStringList(
        'ff_yearMedia', _yearMedia.map((x) => x.toString()).toList());
  }

  List<int> _yearContador = [0, 0, 0, 0, 0];
  List<int> get yearContador => _yearContador;
  set yearContador(List<int> value) {
    _yearContador = value;
    prefs.setStringList(
        'ff_yearContador', value.map((x) => x.toString()).toList());
  }

  void addToYearContador(int value) {
    _yearContador.add(value);
    prefs.setStringList(
        'ff_yearContador', _yearContador.map((x) => x.toString()).toList());
  }

  void removeFromYearContador(int value) {
    _yearContador.remove(value);
    prefs.setStringList(
        'ff_yearContador', _yearContador.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYearContador(int index) {
    _yearContador.removeAt(index);
    prefs.setStringList(
        'ff_yearContador', _yearContador.map((x) => x.toString()).toList());
  }

  void updateYearContadorAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _yearContador[index] = updateFn(_yearContador[index]);
    prefs.setStringList(
        'ff_yearContador', _yearContador.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYearContador(int index, int value) {
    _yearContador.insert(index, value);
    prefs.setStringList(
        'ff_yearContador', _yearContador.map((x) => x.toString()).toList());
  }

  List<int> _yearReg = [0, 0, 0, 0, 0];
  List<int> get yearReg => _yearReg;
  set yearReg(List<int> value) {
    _yearReg = value;
    prefs.setStringList('ff_yearReg', value.map((x) => x.toString()).toList());
  }

  void addToYearReg(int value) {
    _yearReg.add(value);
    prefs.setStringList(
        'ff_yearReg', _yearReg.map((x) => x.toString()).toList());
  }

  void removeFromYearReg(int value) {
    _yearReg.remove(value);
    prefs.setStringList(
        'ff_yearReg', _yearReg.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYearReg(int index) {
    _yearReg.removeAt(index);
    prefs.setStringList(
        'ff_yearReg', _yearReg.map((x) => x.toString()).toList());
  }

  void updateYearRegAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _yearReg[index] = updateFn(_yearReg[index]);
    prefs.setStringList(
        'ff_yearReg', _yearReg.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYearReg(int index, int value) {
    _yearReg.insert(index, value);
    prefs.setStringList(
        'ff_yearReg', _yearReg.map((x) => x.toString()).toList());
  }

  List<double> _yearUso = [0.0, 0.0, 0.0, 0.0, 0.0];
  List<double> get yearUso => _yearUso;
  set yearUso(List<double> value) {
    _yearUso = value;
    prefs.setStringList('ff_yearUso', value.map((x) => x.toString()).toList());
  }

  void addToYearUso(double value) {
    _yearUso.add(value);
    prefs.setStringList(
        'ff_yearUso', _yearUso.map((x) => x.toString()).toList());
  }

  void removeFromYearUso(double value) {
    _yearUso.remove(value);
    prefs.setStringList(
        'ff_yearUso', _yearUso.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYearUso(int index) {
    _yearUso.removeAt(index);
    prefs.setStringList(
        'ff_yearUso', _yearUso.map((x) => x.toString()).toList());
  }

  void updateYearUsoAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _yearUso[index] = updateFn(_yearUso[index]);
    prefs.setStringList(
        'ff_yearUso', _yearUso.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYearUso(int index, double value) {
    _yearUso.insert(index, value);
    prefs.setStringList(
        'ff_yearUso', _yearUso.map((x) => x.toString()).toList());
  }

  List<double> _yearMediaMesG5 = [
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0
  ];
  List<double> get yearMediaMesG5 => _yearMediaMesG5;
  set yearMediaMesG5(List<double> value) {
    _yearMediaMesG5 = value;
    prefs.setStringList(
        'ff_yearMediaMesG5', value.map((x) => x.toString()).toList());
  }

  void addToYearMediaMesG5(double value) {
    _yearMediaMesG5.add(value);
    prefs.setStringList(
        'ff_yearMediaMesG5', _yearMediaMesG5.map((x) => x.toString()).toList());
  }

  void removeFromYearMediaMesG5(double value) {
    _yearMediaMesG5.remove(value);
    prefs.setStringList(
        'ff_yearMediaMesG5', _yearMediaMesG5.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYearMediaMesG5(int index) {
    _yearMediaMesG5.removeAt(index);
    prefs.setStringList(
        'ff_yearMediaMesG5', _yearMediaMesG5.map((x) => x.toString()).toList());
  }

  void updateYearMediaMesG5AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _yearMediaMesG5[index] = updateFn(_yearMediaMesG5[index]);
    prefs.setStringList(
        'ff_yearMediaMesG5', _yearMediaMesG5.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYearMediaMesG5(int index, double value) {
    _yearMediaMesG5.insert(index, value);
    prefs.setStringList(
        'ff_yearMediaMesG5', _yearMediaMesG5.map((x) => x.toString()).toList());
  }

  List<String> _notesDescricao = [];
  List<String> get notesDescricao => _notesDescricao;
  set notesDescricao(List<String> value) {
    _notesDescricao = value;
    prefs.setStringList('ff_notesDescricao', value);
  }

  void addToNotesDescricao(String value) {
    _notesDescricao.add(value);
    prefs.setStringList('ff_notesDescricao', _notesDescricao);
  }

  void removeFromNotesDescricao(String value) {
    _notesDescricao.remove(value);
    prefs.setStringList('ff_notesDescricao', _notesDescricao);
  }

  void removeAtIndexFromNotesDescricao(int index) {
    _notesDescricao.removeAt(index);
    prefs.setStringList('ff_notesDescricao', _notesDescricao);
  }

  void updateNotesDescricaoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _notesDescricao[index] = updateFn(_notesDescricao[index]);
    prefs.setStringList('ff_notesDescricao', _notesDescricao);
  }

  void insertAtIndexInNotesDescricao(int index, String value) {
    _notesDescricao.insert(index, value);
    prefs.setStringList('ff_notesDescricao', _notesDescricao);
  }

  List<int> _notesOrdem = [];
  List<int> get notesOrdem => _notesOrdem;
  set notesOrdem(List<int> value) {
    _notesOrdem = value;
    prefs.setStringList(
        'ff_notesOrdem', value.map((x) => x.toString()).toList());
  }

  void addToNotesOrdem(int value) {
    _notesOrdem.add(value);
    prefs.setStringList(
        'ff_notesOrdem', _notesOrdem.map((x) => x.toString()).toList());
  }

  void removeFromNotesOrdem(int value) {
    _notesOrdem.remove(value);
    prefs.setStringList(
        'ff_notesOrdem', _notesOrdem.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromNotesOrdem(int index) {
    _notesOrdem.removeAt(index);
    prefs.setStringList(
        'ff_notesOrdem', _notesOrdem.map((x) => x.toString()).toList());
  }

  void updateNotesOrdemAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _notesOrdem[index] = updateFn(_notesOrdem[index]);
    prefs.setStringList(
        'ff_notesOrdem', _notesOrdem.map((x) => x.toString()).toList());
  }

  void insertAtIndexInNotesOrdem(int index, int value) {
    _notesOrdem.insert(index, value);
    prefs.setStringList(
        'ff_notesOrdem', _notesOrdem.map((x) => x.toString()).toList());
  }

  List<double> _notesNota = [];
  List<double> get notesNota => _notesNota;
  set notesNota(List<double> value) {
    _notesNota = value;
    prefs.setStringList(
        'ff_notesNota', value.map((x) => x.toString()).toList());
  }

  void addToNotesNota(double value) {
    _notesNota.add(value);
    prefs.setStringList(
        'ff_notesNota', _notesNota.map((x) => x.toString()).toList());
  }

  void removeFromNotesNota(double value) {
    _notesNota.remove(value);
    prefs.setStringList(
        'ff_notesNota', _notesNota.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromNotesNota(int index) {
    _notesNota.removeAt(index);
    prefs.setStringList(
        'ff_notesNota', _notesNota.map((x) => x.toString()).toList());
  }

  void updateNotesNotaAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _notesNota[index] = updateFn(_notesNota[index]);
    prefs.setStringList(
        'ff_notesNota', _notesNota.map((x) => x.toString()).toList());
  }

  void insertAtIndexInNotesNota(int index, double value) {
    _notesNota.insert(index, value);
    prefs.setStringList(
        'ff_notesNota', _notesNota.map((x) => x.toString()).toList());
  }

  List<String> _notesImagem = [];
  List<String> get notesImagem => _notesImagem;
  set notesImagem(List<String> value) {
    _notesImagem = value;
    prefs.setStringList('ff_notesImagem', value);
  }

  void addToNotesImagem(String value) {
    _notesImagem.add(value);
    prefs.setStringList('ff_notesImagem', _notesImagem);
  }

  void removeFromNotesImagem(String value) {
    _notesImagem.remove(value);
    prefs.setStringList('ff_notesImagem', _notesImagem);
  }

  void removeAtIndexFromNotesImagem(int index) {
    _notesImagem.removeAt(index);
    prefs.setStringList('ff_notesImagem', _notesImagem);
  }

  void updateNotesImagemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _notesImagem[index] = updateFn(_notesImagem[index]);
    prefs.setStringList('ff_notesImagem', _notesImagem);
  }

  void insertAtIndexInNotesImagem(int index, String value) {
    _notesImagem.insert(index, value);
    prefs.setStringList('ff_notesImagem', _notesImagem);
  }

  List<String> _notesImagem64 = [];
  List<String> get notesImagem64 => _notesImagem64;
  set notesImagem64(List<String> value) {
    _notesImagem64 = value;
    prefs.setStringList('ff_notesImagem64', value);
  }

  void addToNotesImagem64(String value) {
    _notesImagem64.add(value);
    prefs.setStringList('ff_notesImagem64', _notesImagem64);
  }

  void removeFromNotesImagem64(String value) {
    _notesImagem64.remove(value);
    prefs.setStringList('ff_notesImagem64', _notesImagem64);
  }

  void removeAtIndexFromNotesImagem64(int index) {
    _notesImagem64.removeAt(index);
    prefs.setStringList('ff_notesImagem64', _notesImagem64);
  }

  void updateNotesImagem64AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _notesImagem64[index] = updateFn(_notesImagem64[index]);
    prefs.setStringList('ff_notesImagem64', _notesImagem64);
  }

  void insertAtIndexInNotesImagem64(int index, String value) {
    _notesImagem64.insert(index, value);
    prefs.setStringList('ff_notesImagem64', _notesImagem64);
  }

  List<DocumentReference> _notesId = [];
  List<DocumentReference> get notesId => _notesId;
  set notesId(List<DocumentReference> value) {
    _notesId = value;
    prefs.setStringList('ff_notesId', value.map((x) => x.path).toList());
  }

  void addToNotesId(DocumentReference value) {
    _notesId.add(value);
    prefs.setStringList('ff_notesId', _notesId.map((x) => x.path).toList());
  }

  void removeFromNotesId(DocumentReference value) {
    _notesId.remove(value);
    prefs.setStringList('ff_notesId', _notesId.map((x) => x.path).toList());
  }

  void removeAtIndexFromNotesId(int index) {
    _notesId.removeAt(index);
    prefs.setStringList('ff_notesId', _notesId.map((x) => x.path).toList());
  }

  void updateNotesIdAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _notesId[index] = updateFn(_notesId[index]);
    prefs.setStringList('ff_notesId', _notesId.map((x) => x.path).toList());
  }

  void insertAtIndexInNotesId(int index, DocumentReference value) {
    _notesId.insert(index, value);
    prefs.setStringList('ff_notesId', _notesId.map((x) => x.path).toList());
  }

  List<int> _notesList = [];
  List<int> get notesList => _notesList;
  set notesList(List<int> value) {
    _notesList = value;
    prefs.setStringList(
        'ff_notesList', value.map((x) => x.toString()).toList());
  }

  void addToNotesList(int value) {
    _notesList.add(value);
    prefs.setStringList(
        'ff_notesList', _notesList.map((x) => x.toString()).toList());
  }

  void removeFromNotesList(int value) {
    _notesList.remove(value);
    prefs.setStringList(
        'ff_notesList', _notesList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromNotesList(int index) {
    _notesList.removeAt(index);
    prefs.setStringList(
        'ff_notesList', _notesList.map((x) => x.toString()).toList());
  }

  void updateNotesListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _notesList[index] = updateFn(_notesList[index]);
    prefs.setStringList(
        'ff_notesList', _notesList.map((x) => x.toString()).toList());
  }

  void insertAtIndexInNotesList(int index, int value) {
    _notesList.insert(index, value);
    prefs.setStringList(
        'ff_notesList', _notesList.map((x) => x.toString()).toList());
  }

  int _loop = 0;
  int get loop => _loop;
  set loop(int value) {
    _loop = value;
  }

  int _loopContador = 0;
  int get loopContador => _loopContador;
  set loopContador(int value) {
    _loopContador = value;
  }

  List<String> _feedbackNotes = [];
  List<String> get feedbackNotes => _feedbackNotes;
  set feedbackNotes(List<String> value) {
    _feedbackNotes = value;
  }

  void addToFeedbackNotes(String value) {
    _feedbackNotes.add(value);
  }

  void removeFromFeedbackNotes(String value) {
    _feedbackNotes.remove(value);
  }

  void removeAtIndexFromFeedbackNotes(int index) {
    _feedbackNotes.removeAt(index);
  }

  void updateFeedbackNotesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _feedbackNotes[index] = updateFn(_feedbackNotes[index]);
  }

  void insertAtIndexInFeedbackNotes(int index, String value) {
    _feedbackNotes.insert(index, value);
  }

  String _internetCheck = '';
  String get internetCheck => _internetCheck;
  set internetCheck(String value) {
    _internetCheck = value;
  }

  List<String> _treeOrdem = [];
  List<String> get treeOrdem => _treeOrdem;
  set treeOrdem(List<String> value) {
    _treeOrdem = value;
    prefs.setStringList('ff_treeOrdem', value);
  }

  void addToTreeOrdem(String value) {
    _treeOrdem.add(value);
    prefs.setStringList('ff_treeOrdem', _treeOrdem);
  }

  void removeFromTreeOrdem(String value) {
    _treeOrdem.remove(value);
    prefs.setStringList('ff_treeOrdem', _treeOrdem);
  }

  void removeAtIndexFromTreeOrdem(int index) {
    _treeOrdem.removeAt(index);
    prefs.setStringList('ff_treeOrdem', _treeOrdem);
  }

  void updateTreeOrdemAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _treeOrdem[index] = updateFn(_treeOrdem[index]);
    prefs.setStringList('ff_treeOrdem', _treeOrdem);
  }

  void insertAtIndexInTreeOrdem(int index, String value) {
    _treeOrdem.insert(index, value);
    prefs.setStringList('ff_treeOrdem', _treeOrdem);
  }

  List<String> _treeImage64 = [];
  List<String> get treeImage64 => _treeImage64;
  set treeImage64(List<String> value) {
    _treeImage64 = value;
    prefs.setStringList('ff_treeImage64', value);
  }

  void addToTreeImage64(String value) {
    _treeImage64.add(value);
    prefs.setStringList('ff_treeImage64', _treeImage64);
  }

  void removeFromTreeImage64(String value) {
    _treeImage64.remove(value);
    prefs.setStringList('ff_treeImage64', _treeImage64);
  }

  void removeAtIndexFromTreeImage64(int index) {
    _treeImage64.removeAt(index);
    prefs.setStringList('ff_treeImage64', _treeImage64);
  }

  void updateTreeImage64AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _treeImage64[index] = updateFn(_treeImage64[index]);
    prefs.setStringList('ff_treeImage64', _treeImage64);
  }

  void insertAtIndexInTreeImage64(int index, String value) {
    _treeImage64.insert(index, value);
    prefs.setStringList('ff_treeImage64', _treeImage64);
  }

  List<String> _feedbackTree = [];
  List<String> get feedbackTree => _feedbackTree;
  set feedbackTree(List<String> value) {
    _feedbackTree = value;
  }

  void addToFeedbackTree(String value) {
    _feedbackTree.add(value);
  }

  void removeFromFeedbackTree(String value) {
    _feedbackTree.remove(value);
  }

  void removeAtIndexFromFeedbackTree(int index) {
    _feedbackTree.removeAt(index);
  }

  void updateFeedbackTreeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _feedbackTree[index] = updateFn(_feedbackTree[index]);
  }

  void insertAtIndexInFeedbackTree(int index, String value) {
    _feedbackTree.insert(index, value);
  }

  bool _searchFlag = false;
  bool get searchFlag => _searchFlag;
  set searchFlag(bool value) {
    _searchFlag = value;
  }

  List<int> _searchIndex = [];
  List<int> get searchIndex => _searchIndex;
  set searchIndex(List<int> value) {
    _searchIndex = value;
  }

  void addToSearchIndex(int value) {
    _searchIndex.add(value);
  }

  void removeFromSearchIndex(int value) {
    _searchIndex.remove(value);
  }

  void removeAtIndexFromSearchIndex(int index) {
    _searchIndex.removeAt(index);
  }

  void updateSearchIndexAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _searchIndex[index] = updateFn(_searchIndex[index]);
  }

  void insertAtIndexInSearchIndex(int index, int value) {
    _searchIndex.insert(index, value);
  }

  final _queryTreeManager = StreamRequestManager<List<TreeRecord>>();
  Stream<List<TreeRecord>> queryTree({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TreeRecord>> Function() requestFn,
  }) =>
      _queryTreeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryTreeCache() => _queryTreeManager.clear();
  void clearQueryTreeCacheKey(String? uniqueKey) =>
      _queryTreeManager.clearRequest(uniqueKey);

  final _queryNotesManager = StreamRequestManager<List<NotesRecord>>();
  Stream<List<NotesRecord>> queryNotes({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<NotesRecord>> Function() requestFn,
  }) =>
      _queryNotesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryNotesCache() => _queryNotesManager.clear();
  void clearQueryNotesCacheKey(String? uniqueKey) =>
      _queryNotesManager.clearRequest(uniqueKey);

  final _queryTree2Manager = StreamRequestManager<List<TreeRecord>>();
  Stream<List<TreeRecord>> queryTree2({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TreeRecord>> Function() requestFn,
  }) =>
      _queryTree2Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryTree2Cache() => _queryTree2Manager.clear();
  void clearQueryTree2CacheKey(String? uniqueKey) =>
      _queryTree2Manager.clearRequest(uniqueKey);

  final _queryNotes0Manager = StreamRequestManager<List<NotesRecord>>();
  Stream<List<NotesRecord>> queryNotes0({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<NotesRecord>> Function() requestFn,
  }) =>
      _queryNotes0Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryNotes0Cache() => _queryNotes0Manager.clear();
  void clearQueryNotes0CacheKey(String? uniqueKey) =>
      _queryNotes0Manager.clearRequest(uniqueKey);

  final _queryNotesPrincipalManager = StreamRequestManager<List<NotesRecord>>();
  Stream<List<NotesRecord>> queryNotesPrincipal({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<NotesRecord>> Function() requestFn,
  }) =>
      _queryNotesPrincipalManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryNotesPrincipalCache() => _queryNotesPrincipalManager.clear();
  void clearQueryNotesPrincipalCacheKey(String? uniqueKey) =>
      _queryNotesPrincipalManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
