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

Future<String> lock(
  List<TreeRecord>? tree,
  List<NotesRecord>? notes,
) async {
  String flagSomar = "";
  double soma = 0, contador = 0, media = 0, nota = 0;

  FFAppState().Feedback.add("Inicio 22:02");
  FFAppState()
      .Feedback
      .add("Lock  " + DateFormat('hh:mm:ss').format(DateTime.now()));

  // Notes
  notes?.forEach((notesRec) {
    FFAppState().Feedback.add("Notes ______________ " +
        notesRec.ordem.toString() +
        "  " +
        notesRec.descricao.toString());
    nota = 0;
    try {
      // Verificar (campo nota)
      nota = notesRec.nota;
    } on Exception catch (e) {
      FFAppState().Feedback.add(" Erro: notesRec.nota");
    }

    // Tree
    for (int loop = 0; loop < FFAppState().crudId.length; loop++) {
      // flagSomar
      flagSomar = "n";
      if (notesRec.tree1 == FFAppState().crudTree1[loop]) {
        if (FFAppState().crudTree2[loop].length == 0) {
          flagSomar = "s";
        } else if (notesRec.tree2 == FFAppState().crudTree2[loop]) {
          if (FFAppState().crudTree3[loop].length == 0) {
            flagSomar = "s";
          } else if (notesRec.tree3 == FFAppState().crudTree3[loop]) {
            if (FFAppState().crudTree4[loop].length == 0) {
              flagSomar = "s";
            } else if (notesRec.tree4 == FFAppState().crudTree4[loop]) {
              if (FFAppState().crudTree5[loop].length == 0) {
                flagSomar = "s";
              } else if (notesRec.tree5 == FFAppState().crudTree5[loop]) {
                flagSomar = "s";
              }
            }
          }
        }
      }

      // Media
      if (flagSomar == "s") {
        soma = FFAppState().crudSoma[loop] + nota;
        contador = FFAppState().crudContador[loop] + 1;
        media = soma / contador;

        FFAppState().crudSoma[loop] = soma;
        FFAppState().crudContador[loop] = contador;
        FFAppState().crudMedia[loop] = media;

        FFAppState().Feedback.add(loop.toString() +
            " Somar " +
            FFAppState().crudOrdem[loop].toString() +
            "  " +
            FFAppState().crudDescricao[loop].toString());
      }
    }
  });

  FFAppState()
      .Feedback
      .add("Fim   " + DateFormat('hh:mm:ss').format(DateTime.now()));

  return "ok";
}
