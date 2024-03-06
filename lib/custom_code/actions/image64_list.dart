// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> image64List(List<TreeRecord>? tree) async {
  FFAppState().treeImage64.clear();
  int i = 0;
  FFAppState().treeImage64[0] = "0"; // Persisted (falha)

  tree?.forEach((treeRec) {
    i = int.parse(treeRec.ordem);
    FFAppState().treeImage64[i] = treeRec.image64;
  });
  return 'ok';
}
