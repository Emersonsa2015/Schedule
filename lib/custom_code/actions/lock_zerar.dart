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

Future<String> lockZerar(
  List<TreeRecord>? tree,
  List<NotesRecord>? notes,
) async {
  FFAppState()
      .Feedback
      .add("Zerar " + DateFormat('hh:mm:ss').format(DateTime.now()));

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

  // Tree zerar
  tree?.forEach((treeRec) {
    try {
      FFAppState().crudId.add(treeRec.reference);
      FFAppState().crudDescricao.add(treeRec.descricao);
      FFAppState().crudTree1.add(treeRec.root);
      FFAppState().crudTree2.add(treeRec.tree);
      FFAppState().crudTree3.add(treeRec.tree1);
      FFAppState().crudTree4.add(treeRec.tree2);
      FFAppState().crudTree5.add(treeRec.tree3);
      //FFAppState().crudTree6.add(treeRec.tree6);
      FFAppState().crudOrdem.add(treeRec.ordem);
      FFAppState().crudNivel.add(treeRec.nivel);
      FFAppState().crudSoma.add(0);
      FFAppState().crudContador.add(0);
      FFAppState().crudMedia.add(0);
    } on Exception catch (e) {
      FFAppState().Feedback.add("Erro: Tree zerar");
    }
  });

  return "ok";
}
