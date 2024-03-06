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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> year(
  List<NotesRecord>? notes,
  String? grupoMemo,
) async {
  //
  //Feedback
  FFAppState().Feedback.clear();
  FFAppState().Feedback.add("Feedback Year 08/02/24 18:10");

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

  // Year G5 (Zerar)
  FFAppState().yearTree1Week.clear();
  FFAppState().yearDate.clear();
  FFAppState().yearDescricao.clear();
  FFAppState().yearNota.clear();
  FFAppState().yearYear.clear();
  FFAppState().yearImagem.clear();
  FFAppState().yearId.clear();

  // notes (Zerar)
  FFAppState().notesDescricao.clear();
  FFAppState().notesOrdem.clear();
  FFAppState().notesNota.clear();
  FFAppState().notesImagem.clear();
  FFAppState().notesImagem64.clear();
  FFAppState().notesId.clear();
  FFAppState().notesList.clear();
  FFAppState().feedbackNotes.clear();
  int notesContador = 0;
  int notesReverse = 0;
  //FFAppState().notesOffLine.clear();

  // Search (Pesquisar)
  FFAppState().searchIndex.clear();

  // Media Grupo 5
  double somaG5 = 0, mediaG5 = 0;
  int contadorG5 = 0, regG5 = 0;
  // Media Grupo 5 (Mes)
  double somaG5Mes = 0, mediaG5Mes = 0;
  int contadorG5Mes = 0, regG5Mes = 0;

  int ini = int.parse(grupoMemo!);
  int fim = int.parse(grupoMemo!);
  if (fim == 5) {
    ini = 1;
    fim = 4;
  }
  // Loop (Grupo)
  for (int iTree = ini; iTree <= fim; iTree++) {
    // Feedback Tree
    FFAppState().Feedback.add(" ");
    FFAppState().Feedback.add("Loop (Grupo)   ini: " +
        ini.toString() +
        "   Fim: " +
        fim.toString() +
        "   Contador: " +
        iTree.toString());

    // Variaveis
    int week = 0;
    int weekLoop = 0, weekLoop0 = -1, mesInt = 0;
    int weekYear = 0, weekYearLoop = 0;
    double nota = -1;
    double soma = 0, media = 0;
    int contador = 0, reg = 0;
    double somaG = 0, mediaG = 0;
    int contadorG = 0, regG = 0;
    String tree1 = "";
    String data = "";
    String descricao = "", descricaoFF = "";
    String year = "";
    String mesLoop = "", mesLoop0 = "-1";
    String tree1Week = ""; // Chave (Grupo 5) Provisório
    String flag = "";
    var imagem = null;
    var idNotes = null;

    // Listview Year (Zerar)
    FFAppState().chartTipo.clear();
    FFAppState().chartTree1.clear();
    FFAppState().chartNumero.clear();
    FFAppState().chartDescricao.clear();
    FFAppState().chartImagem.clear();
    FFAppState().chartId.clear();

    // Media grupo (Zerar)
    FFAppState().yearMedia[iTree] = 0;
    FFAppState().yearContador[iTree] = 0;
    FFAppState().yearReg[iTree] = 0;
    FFAppState().yearUso[iTree] = 0;

    //
    //
    // Notes
    notes?.forEach((notesRec) async {
      // Notes (ListView)
      if (grupoMemo == "5") {
        if (iTree == 1) {
          notesContador++;
          FFAppState().feedbackNotes.add(" 1 iTree: " +
              iTree.toString() +
              " Contador: " +
              notesContador.toString() +
              "  " +
              notesRec.descricao);
        } else if (iTree == 4) {
          notesReverse++;
          int x = notesContador - notesReverse;
          FFAppState().feedbackNotes.add(" 4 iTree: " +
              iTree.toString() +
              "  notesContador: " +
              notesContador.toString() +
              "  notesReverse: " +
              notesReverse.toString() +
              " Reverse: " +
              x.toString() +
              "   " +
              notesRec.descricao);
          FFAppState().notesDescricao[x] = notesRec.descricao;
          FFAppState().notesOrdem[x] = int.parse(notesRec.ordem);
          FFAppState().notesNota[x] = notesRec.nota;
          FFAppState().notesImagem[x] = notesRec.imagem;
          FFAppState().notesImagem64[x] = notesRec.image64;
          FFAppState().notesId[x] = notesRec.reference;
          // Search (Pesquisar)
          FFAppState().searchIndex[x] = x;
          // Imagens (List)
          FFAppState().notesList[x] = 0;
          for (int loop = 0; loop < FFAppState().treeOrdem.length; loop++) {
            if (notesRec.ordem == FFAppState().treeOrdem[loop]) {
              FFAppState().notesList[x] = loop;
            }
          }
          ;
          FFAppState()
              .feedbackNotes
              .add("image64: " + notesRec.image64.toString());

          // Data Type
          //FFAppState().notesOffLine[x].descricao = notesRec.descricao;
          //FFAppState().notesOffLine[x].nota = notesRec.nota;
          //FFAppState().notesOffLine[x].imagem = notesRec.imagem;
          //FFAppState().notesOffLine[x].idNotes = notesRec.reference;
        }
      }

      if (notesRec.tree1 == iTree.toString()) {
        //Feedback Notes
        // Provisório > Erro substring(0, 20)
        descricaoFF = notesRec.descricao;
        if (descricaoFF == "") {
          descricaoFF = "                         ";
        }
        FFAppState().Feedback.add(" ");
        FFAppState().Feedback.add(notesRec.tree1 +
            " W:" +
            notesRec.week.toString() +
            "  N:" +
            notesRec.nota.toString() +
            "  " +
            descricaoFF.substring(0, 20));
        //
        //
        // Semana
        weekLoop = notesRec.week;
        if (weekLoop0 == -1) {
          // Week 52 (Virada do Ano) Provisório
          if (weekLoop > 51) {
            weekLoop = 1;
          }
          weekLoop0 = weekLoop;
        }
        // Week 53 (Virada do Ano) 2021 Provisório
        if (weekLoop > 52) {
          weekLoop = 1;
        }
        if (weekLoop != weekLoop0) {
          FFAppState().chartTipo.add("W");
          FFAppState().chartTree1.add(tree1);
          FFAppState().chartImagem.add(imagem);
          FFAppState().chartNumero.add(week);
          FFAppState().chartDescricao.add(descricao);
          FFAppState().chartId.add(idNotes);
          //Feedback
          FFAppState().Feedback.add(
              "FF Sem " + week.toString() + " " + descricao.substring(0, 20));
          //
          // __________________________________________________ Grupo 5
          // Week G5 Vazias
          weekYear++;
          for (int iWeekYear = weekYear; iWeekYear < weekLoop0; iWeekYear++) {
            // Chave (Grupo 5) tree1Week - Provisório
            // Ex: Tree1=1 + Week=1 = "101"
            tree1Week =
                (iTree - 1).toString() + iWeekYear.toString().padLeft(2, '0');
            FFAppState().yearTree1Week.add(tree1Week);
            FFAppState().yearDate.add(data); // Provisório Zerar
            FFAppState().yearDescricao.add("");
            FFAppState().yearNota.add(0);
            FFAppState().yearYear.add("");
            FFAppState().yearImagem.add("");
            FFAppState().yearId.add(idNotes); // Provisório Zerar
            //Feedback
            FFAppState()
                .Feedback
                .add("FV Sem " + iWeekYear.toString() + " Week G5 Vazia");
          }
          // Week G5
          weekYear = weekLoop0;
          tree1Week =
              (iTree - 1).toString() + weekYear.toString().padLeft(2, '0');
          FFAppState().yearTree1Week.add(tree1Week);
          FFAppState().yearDate.add(data);
          FFAppState().yearDescricao.add(descricao);
          FFAppState().yearNota.add(nota);
          FFAppState().yearYear.add(year);
          FFAppState().yearImagem.add(imagem);
          FFAppState().yearId.add(idNotes);
          //Feedback
          FFAppState().Feedback.add("F5 Sem " +
              weekYear.toString() +
              " " +
              descricao.substring(0, 20));
          // __________________________________________________ Grupo 5 Fim
          //
          // Zerar semana
          weekLoop0 = weekLoop;
          flag = "";
          nota = -1;
        }
        //
        //
        // Mes
        mesLoop = notesRec.date.toString().substring(5, 7);
        if (mesLoop != mesLoop0) {
          if (mesLoop0 != "-1") {
            // Media Mes
            media = soma / contador;
            soma = 0;
            contador = 0;
            reg = 0;
            // Detalhe
            FFAppState().chartTipo.add("D");
            FFAppState().chartTree1.add(tree1);
            FFAppState().chartNumero.add(int.parse(mesLoop));
            FFAppState().chartDescricao.add(media.toStringAsFixed(1));
            FFAppState().chartImagem.add(imagem);
            FFAppState().chartId.add(idNotes);
            //
            // Media Mes Grupo 5
            if (ini == 1) {
              if (iTree == 4) {
                mediaG5Mes = somaG5Mes / contadorG5Mes;
                somaG5Mes = 0;
                contadorG5Mes = 0;
                regG5Mes = 0;
                // Variavel (Uso YearG5) list
                FFAppState().yearMediaMesG5[int.parse(mesLoop)] = mediaG5Mes;
              }
            }

            // Detalhe
            //FFAppState().chartTipo.add("D");
            //FFAppState().chartTree1.add(tree1Detalhe);
            //FFAppState().chartNumero.add(weekDetalhe);
            //FFAppState().chartDescricao.add(descricaoDetalhe);
            //FFAppState().chartImagem.add(imagemDetalhe);
            //FFAppState().chartId.add(idNotesDetalhe);
            //// Provisório > Erro substring(0, 20)
            //descricaoFF = descricaoDetalhe;
            //if (descricaoFF == "") {
            //  descricaoFF = "                         ";
            //}
            //FFAppState().Feedback.add("FF Detalhes " +
            //    weekDetalhe.toString() +
            //    " " +
            //    descricaoFF.substring(0, 20));
            //// Zerar Detalhes
            //tree1Detalhe = "";
            //weekDetalhe = 0;
            //dataDetalhe = "";
            //descricaoDetalhe = "";
            //imagemDetalhe = null;
            //yearDetalhe = "";
            //idNotesDetalhe = null;
            //flagDetalhe = "";
            //notaDetalhe = -1;
          }
          //
          // Mês
          FFAppState().chartTipo.add("M");
          FFAppState().chartTree1.add(iTree.toString());
          FFAppState().chartNumero.add(week);
          mesInt = int.parse(mesLoop);
          FFAppState()
              .chartDescricao
              .add("Mês " + mesLoop + "  " + meses[mesInt - 1]);
          FFAppState().chartImagem.add(imagem);
          FFAppState().chartId.add(notesRec.reference);
        }

        // Media
        if (notesRec.nota > 0) {
          soma += notesRec.nota;
          somaG += notesRec.nota;
          somaG5 += notesRec.nota;
          somaG5Mes += notesRec.nota;
          contador++;
          contadorG++;
          contadorG5++;
          contadorG5Mes++;
        }
        // Registros (Uso %)
        reg++;
        regG++;
        regG5++;
        regG5Mes++;

        // Marcação (Year = Y)
        if (notesRec.year == "Y") {
          tree1 = notesRec.tree1;
          data = notesRec.date.toString();
          week = notesRec.week;
          descricao = notesRec.descricao;
          nota = notesRec.nota;
          year = notesRec.year;
          imagem = notesRec.imagem;
          idNotes = notesRec.reference;
          flag = "ok";
          //tree1Detalhe = notesRec.tree1;
          //dataDetalhe = notesRec.date.toString();
          //weekDetalhe = notesRec.week;
          //descricaoDetalhe = notesRec.descricao;
          //notaDetalhe = notesRec.nota;
          //yearDetalhe = notesRec.year;
          //imagemDetalhe = notesRec.imagem;
          //idNotesDetalhe = notesRec.reference;
          //flagDetalhe = "ok";
          FFAppState().Feedback.add("Flag ok    " +
              notesRec.nota.toString() +
              "  " +
              nota.toString() +
              "  " +
              descricao.substring(0, 20));
        }
        //
        //
        // Maior nota
        if (flag != "ok") {
          if (notesRec.nota >= nota) {
            tree1 = notesRec.tree1;
            data = notesRec.date.toString();
            week = notesRec.week;
            imagem = notesRec.imagem;
            descricao = notesRec.descricao;
            year = notesRec.year;
            idNotes = notesRec.reference;
            //Feedback
            FFAppState().Feedback.add("Maior nota " +
                nota.toString() +
                "  " +
                notesRec.nota.toString() +
                "  " +
                descricao.substring(0, 20));
            // Nota (depois do feedbacak)
            nota = notesRec.nota;
          }
        }
        //// Maior nota (detalhe)
        //if (flagDetalhe != "ok") {
        //  if (mesLoop == mesLoop0) {
        //    if (notesRec.nota >= notaDetalhe) {
        //      tree1Detalhe = notesRec.tree1;
        //      dataDetalhe = notesRec.date.toString();
        //      weekDetalhe = notesRec.week;
        //      descricaoDetalhe = notesRec.descricao;
        //      imagemDetalhe = notesRec.imagem;
        //      yearDetalhe = notesRec.year;
        //      idNotesDetalhe = notesRec.reference;
        //      //Feedback
        //      FFAppState().Feedback.add("Maior nota Detalhe " +
        //          notaDetalhe.toString() +
        //          "  " +
        //          notesRec.nota.toString() +
        //          "  " +
        //          descricaoDetalhe.substring(0, 20));
        //      // Nota (depois do feedbacak)
        //      notaDetalhe = notesRec.nota;
        //    }
        //  }
        //}
        // Mês Anterior (Mudou o Mês)
        if (mesLoop != mesLoop0) {
          mesLoop0 = mesLoop;
          //  // Zerar Detalhes
          //  tree1Detalhe = "";
          //  weekDetalhe = 0;
          //  dataDetalhe = "";
          //  descricaoDetalhe = "";
          //  imagemDetalhe = null;
          //  yearDetalhe = "";
          //  idNotesDetalhe = null;
          //  flagDetalhe = "";
          //  notaDetalhe = -1;
        }
      }
    });

    //
    // Ultima Semana -------------------------------------------------
    //

    // Grupo  Vazio
    if (week < 1) {
      week = 1;
    }
    FFAppState().chartTipo.add("W");
    FFAppState().chartTree1.add(tree1);
    FFAppState().chartNumero.add(week);
    FFAppState().chartDescricao.add(descricao);
    FFAppState().chartImagem.add(imagem);
    FFAppState().chartId.add(idNotes);

    // Media Grupos
    mediaG = somaG / contadorG;
    FFAppState().yearMedia[iTree] = mediaG;
    FFAppState().yearContador[iTree] = contadorG;
    FFAppState().yearReg[iTree] = regG;
    somaG = 0;
    contadorG = 0;
    regG = 0;

    // Media Mes
    media = soma / contador;
    soma = 0;
    contador = 0;
    reg = 0;

    // Ultimo Detalhe
    FFAppState().chartTipo.add("D");
    FFAppState().chartTree1.add(tree1);
    FFAppState().chartNumero.add(int.parse(mesLoop));
    FFAppState().chartDescricao.add(media.toStringAsFixed(1));
    FFAppState().chartImagem.add(imagem);
    FFAppState().chartId.add(idNotes);

    //Feedback
    //FFAppState().Feedback.add(
    //    "FF Ult.Sem " + week.toString() + " " + descricao.substring(0, 20));

    //// Ultimo Detalhe
    //FFAppState().chartTipo.add("D");
    //FFAppState().chartTree1.add(tree1Detalhe);
    //FFAppState().chartImagem.add(imagemDetalhe);
    //FFAppState().chartNumero.add(weekDetalhe);
    //FFAppState().chartDescricao.add(descricaoDetalhe);
    //FFAppState().chartId.add(idNotesDetalhe);
    //// Provisório > Erro substring(0, 20)
    //if (descricaoDetalhe == "") {
    //  descricaoDetalhe = "                         ";
    //}
    //FFAppState().Feedback.add("FF Ult.Detalhes " +
    //    weekDetalhe.toString() +
    //    " " +
    //    descricaoDetalhe.substring(0, 20));

    //
    //
    // __________________________________________________ Grupo 5
    //
    // Week G5 Vazias
    weekYear++;
    for (int iWeekYear = weekYear; iWeekYear < week; iWeekYear++) {
      tree1Week = (iTree - 1).toString() + iWeekYear.toString().padLeft(2, '0');
      FFAppState().yearTree1Week.add(tree1Week);
      FFAppState().yearDate.add(data); // Provisório Zerar
      FFAppState().yearDescricao.add("");
      FFAppState().yearNota.add(0);
      FFAppState().yearYear.add("");
      FFAppState().yearImagem.add("");
      FFAppState().yearId.add(idNotes); // Provisório Zerar
      //Feedback
      FFAppState()
          .Feedback
          .add("FV Ult.Sem " + iWeekYear.toString() + " Vazia");
    }

    // Week G5 Ultima semana
    weekYear = week;
    tree1Week = (iTree - 1).toString() + weekYear.toString().padLeft(2, '0');
    FFAppState().yearTree1Week.add(tree1Week);
    FFAppState().yearDate.add(data);
    FFAppState().yearDescricao.add(descricao);
    FFAppState().yearNota.add(nota);
    FFAppState().yearYear.add(year);
    FFAppState().yearImagem.add(imagem);
    FFAppState().yearId.add(idNotes);
    //Feedback
    //FFAppState().Feedback.add(
    //    "F5 Ult.Sem " + weekYear.toString() + " " + descricao.substring(0, 20));

    // Week G5 (Da Ultima até 100)
    weekYear++;
    for (int iWeekYear = weekYear; iWeekYear < 101; iWeekYear++) {
      tree1Week = (iTree - 1).toString() + iWeekYear.toString().padLeft(2, '0');
      FFAppState().yearTree1Week.add(tree1Week);
      FFAppState().yearDate.add(data);
      FFAppState().yearDescricao.add("");
      FFAppState().yearNota.add(0);
      FFAppState().yearYear.add("");
      FFAppState().yearImagem.add("");
      FFAppState().yearId.add(idNotes);
      //Feedback
      FFAppState()
          .Feedback
          .add("F5 100 Sem " + iWeekYear.toString() + " Vazia");
      // __________________________________________________ Grupo 5 Fim
    }
  }
  //
  //
  // Uso %
  if (grupoMemo == "5") {
    // Media Grupo 5
    mediaG5 = somaG5 / contadorG5;
    FFAppState().yearMedia[5] = mediaG5;
    FFAppState().yearContador[5] = contadorG5;
    FFAppState().yearReg[5] = regG5;
    FFAppState().yearUso[5] = 100;
    // Uso % Grupos 1 a 4
    for (int iTree = ini; iTree <= fim; iTree++) {
      FFAppState().yearUso[iTree] = (FFAppState().yearReg[iTree] / regG5) * 100;
    }
  } else {
    // Uso % Grupo
    FFAppState().yearUso[fim] =
        (FFAppState().yearReg[fim] / FFAppState().yearReg[5]) * 100;
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
  String notaReverse = "", descricaoReverse = "", tipo = "";
  // Lopp Reverse
  for (int i = FFAppState().chartDescricao.length - 1; i >= 0; i--) {
    // Media mes (Provisório)
    tipo = FFAppState().chartTipo[i].toString();
    if (tipo == "D") {
      notaReverse = FFAppState().chartDescricao[i];
    }

    descricaoReverse = FFAppState().chartDescricao[i];
    if (tipo == "M") {
      if (double.parse(notaReverse) == 0) {
        notaReverse = " Vazio";
      }
      descricaoReverse =
          FFAppState().chartDescricao[i] + "  Nota: " + notaReverse;
    }
    // Reverse (ListView) Provisório
    FFAppState().yearTree1R.add(FFAppState().chartTree1[i]);
    FFAppState().yearWeekR.add(FFAppState().chartNumero[i]);
    FFAppState().yearTipoR.add(FFAppState().chartTipo[i]);
    FFAppState().yearDescricaoR.add(descricaoReverse);
    FFAppState().yearImagemR.add(FFAppState().chartImagem[i]);
    FFAppState().yearNotaR.add(0);
    FFAppState().yearIdR.add(FFAppState().chartId[i]);
  }

  return "ok";
}
