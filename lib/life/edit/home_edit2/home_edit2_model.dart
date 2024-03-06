import '/flutter_flow/flutter_flow_util.dart';
import 'home_edit2_widget.dart' show HomeEdit2Widget;
import 'package:flutter/material.dart';

class HomeEdit2Model extends FlutterFlowModel<HomeEdit2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Tf_Datetime widget.
  FocusNode? tfDatetimeFocusNode;
  TextEditingController? tfDatetimeController;
  String? Function(BuildContext, String?)? tfDatetimeControllerValidator;
  // State field(s) for Tf_Week widget.
  FocusNode? tfWeekFocusNode;
  TextEditingController? tfWeekController;
  String? Function(BuildContext, String?)? tfWeekControllerValidator;
  // Stores action output result for [Custom Action - dataConversor] action in B_Gravar widget.
  DateTime? dataSaida2;
  // Stores action output result for [Custom Action - weekNumber] action in B_Gravar widget.
  int? weekNumberOutput2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfDatetimeFocusNode?.dispose();
    tfDatetimeController?.dispose();

    tfWeekFocusNode?.dispose();
    tfWeekController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
