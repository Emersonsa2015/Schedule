import '/flutter_flow/flutter_flow_util.dart';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Tf_Email widget.
  FocusNode? tfEmailFocusNode;
  TextEditingController? tfEmailController;
  String? Function(BuildContext, String?)? tfEmailControllerValidator;
  // State field(s) for Tf_password widget.
  FocusNode? tfPasswordFocusNode;
  TextEditingController? tfPasswordController;
  String? Function(BuildContext, String?)? tfPasswordControllerValidator;
  // State field(s) for Tf_Email2 widget.
  FocusNode? tfEmail2FocusNode;
  TextEditingController? tfEmail2Controller;
  String? Function(BuildContext, String?)? tfEmail2ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tfEmailFocusNode?.dispose();
    tfEmailController?.dispose();

    tfPasswordFocusNode?.dispose();
    tfPasswordController?.dispose();

    tfEmail2FocusNode?.dispose();
    tfEmail2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
