import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  DateTime? dataAtual;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - anoMemo] action in Home widget.
  String? anoMemoOutout;
  // State field(s) for Tf_Entry widget.
  FocusNode? tfEntryFocusNode;
  TextEditingController? tfEntryController;
  String? Function(BuildContext, String?)? tfEntryControllerValidator;
  List<NotesRecord> simpleSearchResults = [];
  // Stores action output result for [Custom Action - weekNumber] action in Im_Entry widget.
  int? weekNumberOutput;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tfEntryFocusNode?.dispose();
    tfEntryController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
