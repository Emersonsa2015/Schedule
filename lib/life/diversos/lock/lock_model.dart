import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lock_widget.dart' show LockWidget;
import 'package:flutter/material.dart';

class LockModel extends FlutterFlowModel<LockWidget> {
  ///  Local state fields for this page.

  String grupoYear = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Tf_EntryLock widget.
  FocusNode? tfEntryLockFocusNode;
  TextEditingController? tfEntryLockController;
  String? Function(BuildContext, String?)? tfEntryLockControllerValidator;
  // State field(s) for Tf_AnoMemo widget.
  FocusNode? tfAnoMemoFocusNode;
  TextEditingController? tfAnoMemoController;
  String? Function(BuildContext, String?)? tfAnoMemoControllerValidator;
  // Stores action output result for [Custom Action - anoMemo] action in B_Anomemo widget.
  String? anoMemoOutout;
  // State field(s) for Tf_Week widget.
  FocusNode? tfWeekFocusNode;
  TextEditingController? tfWeekController;
  String? Function(BuildContext, String?)? tfWeekControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Custom Action - batchAll] action in B_Atualizar widget.
  String? batchAllReturn;
  // Stores action output result for [Firestore Query - Query a collection] action in B_Grupo5 widget.
  List<NotesRecord>? notes5Lock;
  // Stores action output result for [Custom Action - year] action in B_Grupo5 widget.
  String? yearLvOutput5Lock;
  // Stores action output result for [Custom Action - yearG5List] action in B_Grupo5 widget.
  String? yearG5ListOutputLock;
  // Stores action output result for [Custom Action - weekNumber] action in B_testes widget.
  int? weekNumberOutput2;
  // Stores action output result for [Custom Action - yTube] action in B_YTube widget.
  String? yTube;
  // Stores action output result for [Custom Action - lockZerar] action in B_Lock widget.
  String? lockZerarReturn;
  // Stores action output result for [Custom Action - lock] action in B_Lock widget.
  String? lockReturn;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tfEntryLockFocusNode?.dispose();
    tfEntryLockController?.dispose();

    tfAnoMemoFocusNode?.dispose();
    tfAnoMemoController?.dispose();

    tfWeekFocusNode?.dispose();
    tfWeekController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
