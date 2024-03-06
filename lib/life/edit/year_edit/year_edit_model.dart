import '/flutter_flow/flutter_flow_util.dart';
import 'year_edit_widget.dart' show YearEditWidget;
import 'package:flutter/material.dart';

class YearEditModel extends FlutterFlowModel<YearEditWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - yearG5Index] action in Descrcao widget.
  String? yearG5IndexOutput;
  // State field(s) for Tf_Entry widget.
  FocusNode? tfEntryFocusNode;
  TextEditingController? tfEntryController;
  String? Function(BuildContext, String?)? tfEntryControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfEntryFocusNode?.dispose();
    tfEntryController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
