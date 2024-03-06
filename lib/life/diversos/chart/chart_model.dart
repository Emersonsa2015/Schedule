import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chart_widget.dart' show ChartWidget;
import 'package:flutter/material.dart';

class ChartModel extends FlutterFlowModel<ChartWidget> {
  ///  Local state fields for this page.

  String flagChat = 'Dia';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Chart widget.
  List<NotesRecord>? notesChart;
  // Stores action output result for [Custom Action - chart] action in Chart widget.
  String? eixoXY;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
