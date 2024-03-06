import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'home0_widget.dart' show Home0Widget;
import 'package:flutter/material.dart';

class Home0Model extends FlutterFlowModel<Home0Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - anoMemo] action in Home0 widget.
  String? anoMemoOutout;
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - internetCheck] action in Home0 widget.
  bool? internetCheckOutput;
  // State field(s) for Tf_Entry widget.
  FocusNode? tfEntryFocusNode;
  TextEditingController? tfEntryController;
  String? Function(BuildContext, String?)? tfEntryControllerValidator;
  // State field(s) for Tf_Search widget.
  FocusNode? tfSearchFocusNode;
  TextEditingController? tfSearchController;
  String? Function(BuildContext, String?)? tfSearchControllerValidator;
  // Stores action output result for [Custom Action - seachList] action in Tf_Search widget.
  String? searchListOutput;
  // Stores action output result for [Custom Action - seachList] action in B_Search widget.
  String? searchListOutput1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    tfEntryFocusNode?.dispose();
    tfEntryController?.dispose();

    tfSearchFocusNode?.dispose();
    tfSearchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
