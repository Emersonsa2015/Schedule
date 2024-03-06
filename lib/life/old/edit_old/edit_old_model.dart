import '/flutter_flow/flutter_flow_util.dart';
import 'edit_old_widget.dart' show EditOldWidget;
import 'package:flutter/material.dart';

class EditOldModel extends FlutterFlowModel<EditOldWidget> {
  ///  Local state fields for this page.

  String vazioString = '';

  String linkXState = '';

  DocumentReference? linkIdState;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Tf_Datetime widget.
  FocusNode? tfDatetimeFocusNode;
  TextEditingController? tfDatetimeController;
  String? Function(BuildContext, String?)? tfDatetimeControllerValidator;
  // State field(s) for Tf_Week widget.
  FocusNode? tfWeekFocusNode;
  TextEditingController? tfWeekController;
  String? Function(BuildContext, String?)? tfWeekControllerValidator;
  // State field(s) for Tf_Titulo widget.
  FocusNode? tfTituloFocusNode;
  TextEditingController? tfTituloController;
  String? Function(BuildContext, String?)? tfTituloControllerValidator;
  // State field(s) for Tf_datPrev widget.
  FocusNode? tfDatPrevFocusNode;
  TextEditingController? tfDatPrevController;
  String? Function(BuildContext, String?)? tfDatPrevControllerValidator;
  // State field(s) for Tf_Tipo widget.
  FocusNode? tfTipoFocusNode;
  TextEditingController? tfTipoController;
  String? Function(BuildContext, String?)? tfTipoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    tfDatetimeFocusNode?.dispose();
    tfDatetimeController?.dispose();

    tfWeekFocusNode?.dispose();
    tfWeekController?.dispose();

    tfTituloFocusNode?.dispose();
    tfTituloController?.dispose();

    tfDatPrevFocusNode?.dispose();
    tfDatPrevController?.dispose();

    tfTipoFocusNode?.dispose();
    tfTipoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
