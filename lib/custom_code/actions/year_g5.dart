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

Future<String> yearG5() async {
  //
  //Feedback
  FFAppState().Feedback.clear();
  FFAppState().Feedback.add("Feedback YearG5 07/02/24 21:10");

  // Meses (Nomes)
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

  // Variaveis
  int chave = 0, mesInt = 0;
  int week = 0, weekDetalhe = 0, weekYear = 0;
  String data = "", data0 = "", dataDetalhe = "";
  String descricao = "", descricao0 = "", descricaoDetalhe = "";
  String year = "", year0 = "", yearDetalhe = "";
  String tree1Week = "", tree1Week0 = ""; // Chave (Grupo 5) Provisório
  String mes = "-1", mes0 = "-1";
  var imagem = null, imagem0 = null, imagemDetalhe = null;
  var idNotes = null, idNotes0 = null, idNotesDetalhe = null;

  // Listview YearG5 (Zerar)
  FFAppState().chartTipo.clear();
  FFAppState().chartImagem.clear();
  FFAppState().chartNumero.clear();
  FFAppState().chartDescricao.clear();
  FFAppState().chartId.clear();

  // Loop Week (52 semanas)
  for (int iWeek = 1; iWeek < 53; iWeek++) {
    // Feedback (Titulo) Week
    FFAppState().Feedback.add("  ");
    FFAppState().Feedback.add("Week: " + iWeek.toString());
    double nota = -1, nota0 = -1, notaDetalhe = -1;
    //
    //
    // Loop Tree (Grupos de 1 a 4)
    for (int iTree = 0; iTree < 4; iTree++) {
      // Chave (Grupo 5) tree1Week - Provisório
      // Ex: Tree1=1 + Week=1 = "101"
      tree1Week = iTree.toString() + iWeek.toString().padLeft(2, '0');
      chave = int.parse(tree1Week) - 1; // Começa no zero
      //
      // Week (Vazia s/n)
      FFAppState().Feedback.add("  ");
      FFAppState().Feedback.add(tree1Week + "  C: " + chave.toString());
      if (FFAppState().yearDescricao[chave] != "") {
        // Variaveis
        data = FFAppState().yearDate[chave];
        descricao = FFAppState().yearDescricao[chave];
        nota = FFAppState().yearNota[chave];
        year = FFAppState().yearYear[chave];
        imagem = FFAppState().yearImagem[chave];
        idNotes = FFAppState().yearId[chave];
        // Feedback
        FFAppState().Feedback.add(descricao);
        // Data vazia erro (mes)
        if (data != "") {
          try {
            mes = data.substring(5, 7);
          } on Exception catch (e) {
            FFAppState().Feedback.add(" Erro: mes = data.substring(5, 7);");
          }
        }
        // Feedback
        FFAppState().Feedback.add("N:" +
            nota.toString() +
            "  Y: " +
            year.toString() +
            "  " +
            data +
            "  Mes " +
            mes.toString() +
            " Mes0 " +
            mes0.toString());
        // Chave (Erro s/n)
        if (tree1Week != FFAppState().yearTree1Week[chave]) {
          String Erro = " Variável tree1Week: " +
              tree1Week +
              "   diferente da chave: " +
              FFAppState().yearTree1Week[chave];
          FFAppState().Feedback.add(" ___________________ Erro " + Erro);
          return Erro;
        }
        //
        // Marcação Y
        if (year == "Y") {
          tree1Week0 = tree1Week;
          data0 = data;
          descricao0 = descricao;
          nota0 = nota;
          year0 = year;
          imagem0 = imagem;
          idNotes0 = idNotes;
        } else {
          if (year0 != "Y") {
            // Nota
            if (nota >= nota0) {
              tree1Week0 = tree1Week;
              data0 = data;
              descricao0 = descricao;
              nota0 = nota;
              year0 = year;
              imagem0 = imagem;
              idNotes0 = idNotes;
            }
          }
        }
      }
    }
    //
    // Mês
    if (mes != mes0) {
      if (mes0 == "-1") {
        mes0 = mes;
      }

      FFAppState().chartTipo.add("M");
      FFAppState().chartImagem.add(imagem0);
      FFAppState().chartNumero.add(iWeek);
      mesInt = int.parse(mes0);
      String descricaoTitulo = "  Nota: Vazio";
      if (FFAppState().yearMediaMesG5[mesInt] > 0) {
        descricaoTitulo =
            "  Nota: " + FFAppState().yearMediaMesG5[mesInt].toStringAsFixed(1);
      }
      FFAppState()
          .chartDescricao
          .add("Mês " + mes0 + "  " + meses[mesInt - 1] + descricaoTitulo);
      FFAppState().chartId.add(idNotes0);
      // Feedback
      FFAppState().Feedback.add(" FF Mês " + mes0 + "  " + meses[mesInt - 1]);
      mes0 = mes;
    }
    //
    // Week
    if (descricao != "") {
      FFAppState().chartTipo.add("W");
      FFAppState().chartImagem.add(imagem0);
      FFAppState().chartNumero.add(iWeek);
      FFAppState().chartDescricao.add(descricao0);
      FFAppState().chartId.add(idNotes0);
      //Feedback
      FFAppState().Feedback.add(
          " FF Sem " + iWeek.toString() + "  " + descricao0.substring(0, 20));
    }
    // Zerar descrição (Vazias)
    descricao = "";
  }

  //
  //
  // Reverse
  FFAppState().yearTree1R.clear();
  FFAppState().yearWeekR.clear();
  FFAppState().yearTipoR.clear();
  FFAppState().yearDescricaoR.clear();
  FFAppState().yearImagemR.clear();
  FFAppState().yearNotaR.clear();
  FFAppState().yearIdR.clear();

  // Lopp Reverse
  for (int i = FFAppState().chartDescricao.length - 1; i >= 0; i--) {
    FFAppState().yearTree1R.add(FFAppState().chartTree1[i]);
    FFAppState().yearWeekR.add(FFAppState().chartNumero[i]);
    FFAppState().yearTipoR.add(FFAppState().chartTipo[i]);
    FFAppState().yearDescricaoR.add(FFAppState().chartDescricao[i]);
    FFAppState().yearImagemR.add(FFAppState().chartImagem[i]);
    FFAppState().yearNotaR.add(0);
    FFAppState().yearIdR.add(FFAppState().chartId[i]);
  }

  return "OK";
}
