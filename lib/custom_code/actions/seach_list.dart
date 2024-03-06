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

Future<String> seachList(String? searchEntry) async {
  FFAppState().searchIndex.clear();
  FFAppState().feedbackTree.clear();
  int contador = 0;
  for (int i = 0; i <= (FFAppState().notesDescricao.length - 1); i++) {
    if (searchEntry == "") {
      FFAppState().searchIndex[i] = i;
    } else if (FFAppState().notesDescricao[i].contains(searchEntry!)) {
      FFAppState().searchIndex.add(i);
      contador++;
    }
  }

  FFAppState().feedbackTree.add("SearchList  05/03/24 21:50:00");
  for (int i = 0; i <= (FFAppState().searchIndex.length - 1); i++) {
    contador = FFAppState().searchIndex[i];
    FFAppState().feedbackTree.add(
        contador.toString() + " - " + FFAppState().notesDescricao[contador]);
  }

  return "ok";
}
