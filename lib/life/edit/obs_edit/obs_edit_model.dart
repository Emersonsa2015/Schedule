import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'obs_edit_widget.dart' show ObsEditWidget;
import 'package:flutter/material.dart';

class ObsEditModel extends FlutterFlowModel<ObsEditWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - dataObs] action in ObsEdit widget.
  DateTime? dataObsOutput;
  // Stores action output result for [Firestore Query - Query a collection] action in ObsEdit widget.
  ObsRecord? obsQuery0;
  // State field(s) for Tf_Titulo widget.
  FocusNode? tfTituloFocusNode;
  TextEditingController? tfTituloController;
  String? Function(BuildContext, String?)? tfTituloControllerValidator;
  // State field(s) for Tf_Obs widget.
  FocusNode? tfObsFocusNode;
  TextEditingController? tfObsController;
  String? Function(BuildContext, String?)? tfObsControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in B_Gravar widget.
  ObsRecord? obsQuery;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfTituloFocusNode?.dispose();
    tfTituloController?.dispose();

    tfObsFocusNode?.dispose();
    tfObsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
