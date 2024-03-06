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

Future<String> pesquisa(
  List<NotesRecord>? notes,
  String? entry,
) async {
  String descricao = "";
  FFAppState().Feedback.clear();
  //
  // Notes
  notes?.forEach((notesRec) async {
    descricao = notesRec.descricao;
    if (descricao.contains(entry!)) {
      //Feedback
      FFAppState().Feedback.add(descricao);
    }
  });
  return "ok";
}
