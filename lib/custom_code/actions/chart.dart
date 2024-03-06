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

import 'dart:io';

Future<String> chart(
  List<NotesRecord>? notes,
  String? flagChart,
) async {
  DateTime? date = null;
  // Dia
  FFAppState().EixoX.clear();
  FFAppState().EixoY.clear();
  FFAppState().EixoFeedback.clear();
  // Sem
  FFAppState().EixoXSem.clear();
  FFAppState().EixoYSem.clear();
  FFAppState().EixoFeedbackSem.clear();
  // Mes
  FFAppState().EixoXMes.clear();
  FFAppState().EixoYMes.clear();
  FFAppState().EixoFeedbackMes.clear();

  String date1 = "", date2 = "", feedback = "";
  String date1Sem = "", date2Sem = "";
  String date1Mes = "", date2Mes = "";
  double nota = 0;
  double soma = 0, contador1 = 1, contador2 = 1, media = 0;
  double somaSem = 0, contador1Sem = 1, contador2Sem = 1, mediaSem = 0;
  double somaMes = 0, contador1Mes = 1, contador2Mes = 1, mediaMes = 0;

  notes?.forEach((note) {
    date = note.date;
    date1 = DateFormat('MMdd').format(date!);
    date1Sem = note.week.toString();
    date1Mes = DateFormat('MM').format(date!);

    if (contador1 == 1) {
      date2 = date1;
      date2Sem = date1Sem;
      date2Mes = date1Mes;
    }
    // Dia
    if (date1 != date2) {
      // Grafico
      if (contador2 < 12) {
        FFAppState().EixoX.add(double.parse(date2));
        FFAppState().EixoY.add(media);
        String feedback =
            "Eixo -------- " + date2 + "  " + media.toStringAsFixed(1);
        FFAppState().EixoFeedback.add(feedback);
        // Contador
        date2 = date1;
        contador2 += 1;
      }
    }

    // Sem
    if (date1Sem != date2Sem) {
      // Grafico
      if (contador2Sem < 12) {
        FFAppState().EixoXSem.add(double.parse(date2Sem));
        FFAppState().EixoYSem.add(media);
        String feedback =
            "Eixo -------- " + date2Sem + "  " + media.toStringAsFixed(1);
        FFAppState().EixoFeedbackSem.add(feedback);
        // Contador
        date2Sem = date1Sem;
        contador2Sem += 1;
      }
    }

    // Mes
    if (date1Mes != date2Mes) {
      // Grafico
      if (contador2Mes < 12) {
        FFAppState().EixoXMes.add(double.parse(date2Mes));
        FFAppState().EixoYMes.add(media);
        String feedback =
            "Eixo -------- " + date2Mes + "  " + media.toStringAsFixed(1);
        FFAppState().EixoFeedbackMes.add(feedback);
        // Contador
        date2Mes = date1Mes;
        contador2Mes += 1;
      }
    }

    nota = note.nota;
    if (nota > 0) {
      soma += nota;
      media = soma / contador1;
      contador1 += 1;
    }

    // Dados
    String feedback = " D1 " +
        date1 +
        " C2 " +
        contador2.toString() +
        "      C1 " +
        contador1.toString() +
        "  N " +
        nota.toStringAsFixed(1) +
        "  S " +
        soma.toStringAsFixed(1) +
        "  M " +
        media.toStringAsFixed(1);

    if (contador2 < 12) {
      FFAppState().EixoFeedback.add(feedback);
      FFAppState().EixoFeedback.add(note.descricao);
    }
    if (contador2Sem < 12) {
      FFAppState().EixoFeedbackSem.add(feedback);
      FFAppState().EixoFeedbackSem.add(note.descricao);
    }
    if (contador2Mes < 12) {
      FFAppState().EixoFeedbackMes.add(feedback);
      FFAppState().EixoFeedbackMes.add(note.descricao);
    }
  });

  // Grafico Dia
  if (contador2 < 12) {
    FFAppState().EixoX.add(double.parse(date2));
    FFAppState().EixoY.add(media);
    feedback = "Eixo -------- " + date2 + "  " + media.toStringAsFixed(1);
    FFAppState().Feedback.add(feedback);
  }
  // Grafico Mes
  if (contador2 < 12) {
    FFAppState().EixoXSem.add(double.parse(date2Sem));
    FFAppState().EixoYSem.add(media);
    feedback = "Eixo -------- " + date2 + "  " + media.toStringAsFixed(1);
    FFAppState().EixoFeedbackSem.add(feedback);
  }
  // Grafico Ano
  if (contador2 < 12) {
    FFAppState().EixoXMes.add(double.parse(date2Mes));
    FFAppState().EixoYMes.add(media);
    feedback = "Eixo -------- " + date2Mes + "  " + media.toStringAsFixed(1);
    FFAppState().EixoFeedbackMes.add(feedback);
  }

  return "ok";
}
