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

Future<String> treeAlteracao(List<NotesRecord>? notes) async {
  int contador = 0;
  // zerar
  FFAppState().yearTree1WeekD.clear();
  FFAppState().yearDateD.clear();
  FFAppState().yearDescricaoD.clear();
  FFAppState().yearNotaD.clear();
  FFAppState().yearYearD.clear();
  FFAppState().yearImagemD.clear();
  FFAppState().yearIdD.clear();

  // Notes
  notes?.forEach((notesRec) async {
    FFAppState().yearTree1WeekD.add(notesRec.week.toString());
    FFAppState().yearDateD.add(notesRec.date.toString());
    FFAppState().yearDescricaoD.add(notesRec.descricao);
    FFAppState().yearNotaD.add(notesRec.nota);
    FFAppState().yearYearD.add(notesRec.year);
    FFAppState().yearImagemD.add(notesRec.imagem);
    FFAppState().yearIdD.add(notesRec.reference);
    contador++;
  });
  FFAppState().loop = contador;
  return "ok";
}
