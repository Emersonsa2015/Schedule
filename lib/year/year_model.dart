import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'year_widget.dart' show YearWidget;
import 'package:flutter/material.dart';

class YearModel extends FlutterFlowModel<YearWidget> {
  ///  Local state fields for this page.

  double? notaYear = 5.0;

  bool feedback = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in Tt_DescricaoNotes widget.
  List<NotesRecord>? notesYearD;
  // Stores action output result for [Custom Action - yearG5Detalhe] action in Tt_DescricaoNotes widget.
  String? yearG5DetalheOutput;
  // Stores action output result for [Custom Action - anoMemo] action in B_AnoMinus widget.
  String? anoMemoMinus;
  // Stores action output result for [Custom Action - anoMemo] action in B_AnoPlus widget.
  String? anoMemoPlus;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
