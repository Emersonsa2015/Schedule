import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_copy_widget.dart' show HomeCopyWidget;
import 'package:flutter/material.dart';

class HomeCopyModel extends FlutterFlowModel<HomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - anoMemo] action in HomeCopy widget.
  String? anoMemoOutout;
  // State field(s) for Tf_Entry widget.
  FocusNode? tfEntryFocusNode;
  TextEditingController? tfEntryController;
  String? Function(BuildContext, String?)? tfEntryControllerValidator;
  List<NotesRecord> simpleSearchResults = [];

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
