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

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future exporTree(List<TreeRecord>? docs) async {
  docs = docs ?? [];

  // Add the company name and address as a header
  String companyName = "Life";
  String companyAddress = "Tree";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent = header +
      "Root,Tree,Tree1,Tree2,Tree3,Tree4,Ordem,Descricao,Atalho,Imagem,Nivel,Flag,Ativo,Image64,Soma,Contador,Media";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.root.toString() +
      "," +
      record.tree.toString() +
      "," +
      record.tree1.toString() +
      "," +
      record.tree2.toString() +
      "," +
      record.tree3.toString() +
      "," +
      record.tree4.toString() +
      "," +
      record.ordem.toString() +
      "," +
      record.descricao.toString() +
      "," +
      record.atalho.toString() +
      "," +
      record.imagem.toString() +
      "," +
      record.nivel.toString() +
      "," +
      record.flag.toString() +
      "," +
      record.ativo.toString() +
      "," +
      record.image64.toString() +
      "," +
      record.soma.toString() +
      "," +
      record.contador.toString() +
      "," +
      record.media.toString());

  // Example of date formating thanks to Edmund Ong
  // DateFormat('dd-MM-yyyy').format(record.attendanceDate!) +
  //     "," +
  //     DateFormat('HH:mm').format(record.timeIn!) +
  //     "," +

  final fileName = "Tree " + DateTime.now().toString() + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
