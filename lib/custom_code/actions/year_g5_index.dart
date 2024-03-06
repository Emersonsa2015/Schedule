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

Future<String> yearG5Index(int indexD) async {
  // Antes Detalhe
  FFAppState().yearYearD[FFAppState().yearIndexAntesD] = "";
  // Depois Detalhe
  FFAppState().yearYearD[indexD] = "Y";
  // Atualizar Detalhe
  FFAppState().yearIndexAntesD = indexD;

  // Antes Geral
  FFAppState().yearYear[FFAppState().yearIndexAntes] = "";
  // Depois Geral
  String tree1Week = FFAppState().yearTree1WeekD[indexD];
  int i = int.parse(tree1Week) - 1;
  FFAppState().yearYear[i] = "Y";
  // Atualizar Geral
  FFAppState().yearIndexAntes = i;

  return "ok";
}
