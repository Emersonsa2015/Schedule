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

Future export(List<NotesRecord>? docs) async {
  docs = docs ?? [];

  // Add the company name and address as a header
  String companyName = "Life";
  String companyAddress = "Notes";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent = header +
      "Date,Week,Tree1,Tree2,Tree3,Tree4,Tree5,Ordem,Atalho,Imagem,Nivel,Flag,Nota,Hour,Duration,WeekDay,Year,Tag,Valor,Unidade,Link1,Link2,Link3,Grupo,Descricao,idTree,Cor,corcodigo,corcodigofont,NotaImagem,usuario";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.date.toString() +
      "," +
      record.week.toString() +
      "," +
      record.tree1.toString() +
      "," +
      record.tree2.toString() +
      "," +
      record.tree3.toString() +
      "," +
      record.tree4.toString() +
      "," +
      record.tree5.toString() +
      "," +
      record.ordem.toString() +
      "," +
      record.atalho.toString() +
      "," +
      record.imagem.toString() +
      "," +
      record.nivel.toString() +
      "," +
      record.flag.toString() +
      "," +
      record.nota.toString() +
      "," +
      record.hour.toString() +
      "," +
      record.duration.toString() +
      "," +
      record.weekDay.toString() +
      "," +
      record.year.toString() +
      "," +
      record.tag.toString() +
      "," +
      record.valor.toString() +
      "," +
      record.unidade.toString() +
      "," +
      record.link1.toString() +
      "," +
      record.link2.toString() +
      "," +
      record.link3.toString() +
      "," +
      record.grupo.toString() +
      "," +
      record.descricao.toString() +
      "," +
      record.idTree.toString() +
      "," +
      record.cor.toString() +
      "," +
      record.corCodigo.toString() +
      "," +
      record.corCodigoFont.toString() +
      "," +
      record.notaImagem.toString() +
      "," +
      record.usuario.toString());

  // Example of date formating thanks to Edmund Ong
  // DateFormat('dd-MM-yyyy').format(record.attendanceDate!) +
  //     "," +
  //     DateFormat('HH:mm').format(record.timeIn!) +
  //     "," +

  final fileName = "Notes " + DateTime.now().toString() + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
