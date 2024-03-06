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

Future<DateTime> dataObs(String mesPar) async {
  String dia = "01";
  String mes = mesPar.substring(4, 6); // Erro substring
  String ano = FFAppState().AnoMemo.toString();
  String hora = "00";
  String minuto = "00";
  String segundo = "00";

  String data = "${ano}-${mes}-${dia} ${hora}:${minuto}:${segundo}";

  DateTime dataSaida = DateTime.parse(data);

  return dataSaida;

// 01234567
//"Mês " + mesLoop
//
//    0123456789012345678
//   "2023-10-20 11:11:11";
}
