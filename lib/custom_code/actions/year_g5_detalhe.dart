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

Future<String> yearG5Detalhe(
  int? week,
  String? grupoMemo,
  List<NotesRecord>? notes,
) async {
  int yearWeek = 0, contador = 0;
  // zerar
  FFAppState().yearTree1WeekD.clear();
  FFAppState().yearDateD.clear();
  FFAppState().yearDescricaoD.clear();
  FFAppState().yearNotaD.clear();
  FFAppState().yearYearD.clear();
  FFAppState().yearImagemD.clear();
  FFAppState().yearIdD.clear();

  // Lopp
  if (grupoMemo != "5") {
    // Grupos
    notes?.forEach((notesRec) async {
      FFAppState().yearTree1WeekD.add(contador.toString());
      FFAppState().yearDateD.add(notesRec.date.toString());
      FFAppState().yearDescricaoD.add(notesRec.descricao);
      FFAppState().yearNotaD.add(notesRec.nota);
      FFAppState().yearYearD.add(notesRec.year);
      FFAppState().yearImagemD.add(notesRec.imagem);
      FFAppState().yearIdD.add(notesRec.reference);
      // Marcação
      if (notesRec.reference == FFAppState().chartIdLv) {
        // yearD Antes
        FFAppState().yearIndexAntesD = contador;
      }
      contador++;
    });
  } else {
    //
    // Grupo 5
    for (int i = 0; i <= (FFAppState().yearId.length - 1); i++) {
      yearWeek = int.parse(FFAppState().yearTree1Week[i].substring(1, 3));
      // week
      if (week == yearWeek) {
        if (FFAppState().yearDescricao[i] != "") {
          FFAppState().yearTree1WeekD.add(FFAppState().yearTree1Week[i]);
          FFAppState().yearDateD.add(FFAppState().yearDate[i]);
          FFAppState().yearDescricaoD.add(FFAppState().yearDescricao[i]);
          FFAppState().yearNotaD.add(FFAppState().yearNota[i]);
          FFAppState().yearYearD.add(FFAppState().yearYear[i]);
          FFAppState().yearImagemD.add(FFAppState().yearImagem[i]);
          FFAppState().yearIdD.add(FFAppState().yearId[i]);
          // Marcação
          if (FFAppState().yearId[i] == FFAppState().chartIdLv) {
            // yearD Antes
            FFAppState().yearIndexAntesD = contador;
            // year Antes
            FFAppState().yearIndexAntes = i;
          }
          contador++;
        }
      }
    }
  }
  return "ok";
}
