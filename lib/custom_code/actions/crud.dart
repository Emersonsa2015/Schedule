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

Future crud(
  List<TreeRecord>? tree,
  NotesRecord notesRec,
) async {
  double soma = 0, contador = 0, media = 0;
  int loop = 0;
  String flagSomar = "";

  // crud (Data Types em breve)
  FFAppState().crudId.clear();
  FFAppState().crudDescricao.clear();
  FFAppState().crudTree1.clear();
  FFAppState().crudTree2.clear();
  FFAppState().crudTree3.clear();
  FFAppState().crudTree4.clear();
  FFAppState().crudTree5.clear();
  FFAppState().crudTree6.clear();
  FFAppState().crudOrdem.clear();
  FFAppState().crudNivel.clear();
  FFAppState().crudSoma.clear();
  FFAppState().crudContador.clear();
  FFAppState().crudMedia.clear();

  tree?.forEach((treeRec) {
    // flagSomar
    flagSomar = "n";
    if (notesRec.tree1 == treeRec.root) {
      if (treeRec.tree.length == 0) {
        flagSomar = "s";
      } else if (notesRec.tree2 == treeRec.tree) {
        if (treeRec.tree1 == 0) {
          flagSomar = "s";
        } else if (notesRec.tree3 == treeRec.tree1) {
          if (treeRec.tree2.length == 0) {
            flagSomar = "s";
          } else if (notesRec.tree4 == treeRec.tree2) {
            if (treeRec.tree3 == 0) {
              flagSomar = "s";
            } else if (notesRec.tree5 == treeRec.tree3) {
              flagSomar = "s";
            }
          }
        }
      }
    }

    // Media
    if (flagSomar == "s") {
      FFAppState().crudId.add(treeRec.reference);
      soma = treeRec.soma;
      soma -= FFAppState().crudOld;
      soma += FFAppState().crudNew;
      contador = treeRec.contador + 1;
      media = soma / contador;

      FFAppState().crudSoma.add(soma);
      FFAppState().crudContador.add(contador);
      FFAppState().crudMedia.add(media);

      FFAppState().Feedback.add(" S " +
          soma.toString() +
          "   C " +
          contador.toString() +
          "   M " +
          media.toString());
    }
  });
}
