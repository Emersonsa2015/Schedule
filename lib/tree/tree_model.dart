import '/flutter_flow/flutter_flow_util.dart';
import 'tree_widget.dart' show TreeWidget;
import 'package:flutter/material.dart';

class TreeModel extends FlutterFlowModel<TreeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TF_Ordem widget.
  FocusNode? tFOrdemFocusNode;
  TextEditingController? tFOrdemController;
  String? Function(BuildContext, String?)? tFOrdemControllerValidator;
  // State field(s) for Tf_Nivel widget.
  FocusNode? tfNivelFocusNode;
  TextEditingController? tfNivelController;
  String? Function(BuildContext, String?)? tfNivelControllerValidator;
  // State field(s) for TF_Root widget.
  FocusNode? tFRootFocusNode;
  TextEditingController? tFRootController;
  String? Function(BuildContext, String?)? tFRootControllerValidator;
  // State field(s) for TF_Tree widget.
  FocusNode? tFTreeFocusNode;
  TextEditingController? tFTreeController;
  String? Function(BuildContext, String?)? tFTreeControllerValidator;
  // State field(s) for TF_Tree1 widget.
  FocusNode? tFTree1FocusNode;
  TextEditingController? tFTree1Controller;
  String? Function(BuildContext, String?)? tFTree1ControllerValidator;
  // State field(s) for TF_Tree2 widget.
  FocusNode? tFTree2FocusNode;
  TextEditingController? tFTree2Controller;
  String? Function(BuildContext, String?)? tFTree2ControllerValidator;
  // State field(s) for TF_Tree3 widget.
  FocusNode? tFTree3FocusNode;
  TextEditingController? tFTree3Controller;
  String? Function(BuildContext, String?)? tFTree3ControllerValidator;
  // State field(s) for TF_Descricao widget.
  FocusNode? tFDescricaoFocusNode;
  TextEditingController? tFDescricaoController;
  String? Function(BuildContext, String?)? tFDescricaoControllerValidator;
  // State field(s) for TF_Atalho widget.
  FocusNode? tFAtalhoFocusNode;
  TextEditingController? tFAtalhoController;
  String? Function(BuildContext, String?)? tFAtalhoControllerValidator;
  // State field(s) for TF_Ativo widget.
  FocusNode? tFAtivoFocusNode;
  TextEditingController? tFAtivoController;
  String? Function(BuildContext, String?)? tFAtivoControllerValidator;
  // State field(s) for TF_Image widget.
  FocusNode? tFImageFocusNode;
  TextEditingController? tFImageController;
  String? Function(BuildContext, String?)? tFImageControllerValidator;
  // Stores action output result for [Custom Action - image64] action in Imag64 widget.
  String? imageTreeOutput;
  // State field(s) for Tf_Image64 widget.
  FocusNode? tfImage64FocusNode;
  TextEditingController? tfImage64Controller;
  String? Function(BuildContext, String?)? tfImage64ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    tFOrdemFocusNode?.dispose();
    tFOrdemController?.dispose();

    tfNivelFocusNode?.dispose();
    tfNivelController?.dispose();

    tFRootFocusNode?.dispose();
    tFRootController?.dispose();

    tFTreeFocusNode?.dispose();
    tFTreeController?.dispose();

    tFTree1FocusNode?.dispose();
    tFTree1Controller?.dispose();

    tFTree2FocusNode?.dispose();
    tFTree2Controller?.dispose();

    tFTree3FocusNode?.dispose();
    tFTree3Controller?.dispose();

    tFDescricaoFocusNode?.dispose();
    tFDescricaoController?.dispose();

    tFAtalhoFocusNode?.dispose();
    tFAtalhoController?.dispose();

    tFAtivoFocusNode?.dispose();
    tFAtivoController?.dispose();

    tFImageFocusNode?.dispose();
    tFImageController?.dispose();

    tfImage64FocusNode?.dispose();
    tfImage64Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
