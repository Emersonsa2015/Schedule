import '/flutter_flow/flutter_flow_util.dart';
import 'notas_old_widget.dart' show NotasOldWidget;
import 'package:flutter/material.dart';

class NotasOldModel extends FlutterFlowModel<NotasOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Tf_Descricao widget.
  FocusNode? tfDescricaoFocusNode;
  TextEditingController? tfDescricaoController;
  String? Function(BuildContext, String?)? tfDescricaoControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Tf_Datetime widget.
  FocusNode? tfDatetimeFocusNode;
  TextEditingController? tfDatetimeController;
  String? Function(BuildContext, String?)? tfDatetimeControllerValidator;
  // State field(s) for Tf_Week widget.
  FocusNode? tfWeekFocusNode;
  TextEditingController? tfWeekController;
  String? Function(BuildContext, String?)? tfWeekControllerValidator;
  // State field(s) for Tf_Seguindo widget.
  FocusNode? tfSeguindoFocusNode;
  TextEditingController? tfSeguindoController;
  String? Function(BuildContext, String?)? tfSeguindoControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Stores action output result for [Custom Action - dataConversor] action in B_Editar widget.
  DateTime? dataSaida;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tfDescricaoFocusNode?.dispose();
    tfDescricaoController?.dispose();

    tfDatetimeFocusNode?.dispose();
    tfDatetimeController?.dispose();

    tfWeekFocusNode?.dispose();
    tfWeekController?.dispose();

    tfSeguindoFocusNode?.dispose();
    tfSeguindoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
