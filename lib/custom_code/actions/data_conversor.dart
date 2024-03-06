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

Future<DateTime> dataConversor(String? dataEntrada) async {
  String data = dataEntrada!;

  String dia = data.substring(8, 10);
  String mes = data.substring(5, 7);
  String ano = data.substring(0, 4);
  String hora = data.substring(11, 13);
  String minuto = data.substring(14, 16);
  String segundo = data.substring(17, 19);

  String data1 = "${ano}-${mes}-${dia} ${hora}:${minuto}:${segundo}";

  DateTime dataSaida = DateTime.parse(data1);

  return dataSaida;

//                         0123456789012345678
//  String dataEntrada1 = "2023-10-20 11:11:11";

//  DateTime dateSaida = DateFormat("dd/MM/yyyy hh:mm:ss").parse(dataEntrada1);
//  String dataEntrada2 = DateFormat('yyyy/MM/dd hh:mm:ss').format(dataEntrada1);
//  DateTime dataSaida = DateTime(ano, mes, dia, hora, minuto, segundo);
//  DateTime dataSaida = DateTime.parse(dataEntrada1);
}
