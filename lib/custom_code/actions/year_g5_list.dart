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

Future<String> yearG5List(String? grupoYear) async {
  //
  //Feedback
  FFAppState().Feedback.clear();
  FFAppState().Feedback.add("Feedback yearG5List 06/02/24 10:20");

  final List<String> meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  if (grupoYear == "5") {
    //
    // Loop (Grupo 5)
    FFAppState().Feedback.add(" ");
    FFAppState().Feedback.add("Grupo 5  Var: yearDescricao");
    FFAppState().Feedback.add(" ");
    for (int iWeek = 0; iWeek <= (FFAppState().yearId.length - 1); iWeek++) {
      int weekLoop = 0, weekLoop0 = -1, mesInt = 0;
      int week = 0, weekDetalhe = 0, weekYear = 0;
      double nota = -1, notaDetalhe = -1;
      String mesLoop = "", mesLoop0 = "-1";
      String descricao = "", descricaoDetalhe = "";
      String year = "", yearDetalhe = "";
      String flag = "", flagDetalhe = "";
      String tree1Week = ""; // Chave (Grupo 5) Provisório
      var imagem = null, imagemDetalhe = null;
      var idNotes = null, idNotesDetalhe = null;
      var data = null, dataDetalhe = null;

      tree1Week = FFAppState().yearTree1Week[iWeek];
      data = FFAppState().yearDate[iWeek];
      descricao = FFAppState().yearDescricao[iWeek];
      nota = FFAppState().yearNota[iWeek];
      year = FFAppState().yearYear[iWeek];
      imagem = FFAppState().yearImagem[iWeek];
      idNotes = FFAppState().yearId[iWeek];

      FFAppState().Feedback.add((iWeek + 1).toString() +
          "  C:" +
          tree1Week.toString() +
          "  N:" +
          nota.toString() +
          "  Y:" +
          year.toString() +
          "  D:" +
          data.toString() +
          "   " +
          descricao);
    }
  } else {
    // Loop (Grupo != 5)
    FFAppState().Feedback.add(" ");
    FFAppState().Feedback.add("Grupo " + grupoYear! + "  Var: chartDescricao");
    FFAppState().Feedback.add(" ");

    for (int i = 0; i <= (FFAppState().chartDescricao.length - 1); i++) {
      FFAppState().Feedback.add((i).toString() +
          " Tipo: " +
          FFAppState().chartTipo[i] +
          "  Week: " +
          FFAppState().chartNumero[i].toString() +
          "  " +
          FFAppState().chartDescricao[i]);
    }
  }
  return "ok";
}
