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

//import '/custom_code/actions/index.dart';
//import '/flutter_flow/custom_functions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String?> batchAll(
  DocumentReference? usuario,
  List<TreeRecord>? tree,
) async {
  FFAppState().Feedback.add("Inicio");
  CollectionReference Notes = FirebaseFirestore.instance.collection('Notes');

  // Usuario (todos)
  FFAppState().Feedback.add("Usuario");
  QuerySnapshot allNotes = await Notes.get();
  WriteBatch allBatch = FirebaseFirestore.instance.batch();
  // Notes
  allNotes.docs.forEach((document) async {
    allBatch.update(document.reference, {
      'Usuario': usuario,
      'CorCodigo': '#FFFFFF',
      'CorCodigoFont': '#14181B',
      'Imagem': '' // Sem imagem (Tree)
    });
  });
  await allBatch.commit();
  //
  // Tree
  FFAppState().Feedback.add("Tree");
  tree?.forEach((treeRec) async {
    QuerySnapshot filteredNotes =
        await Notes.where('Ordem', isEqualTo: treeRec.ordem).get();
    WriteBatch batch = FirebaseFirestore.instance.batch();
    // Notes
    filteredNotes.docs.forEach((document) async {
      batch.update(document.reference, {
        'Grupo': treeRec.descricao,
        'Tree1': treeRec.root,
        'Tree2': treeRec.tree,
        'Tree3': treeRec.tree1,
        'Tree4': treeRec.tree2,
        'Tree5': treeRec.tree3,
        'Tree6': treeRec.tree4,
        'Ordem': treeRec.ordem,
        'Nivel': treeRec.nivel,
        'Imagem': treeRec.imagem,
        'idTree': treeRec.reference
      });
    });
    await batch.commit();
    //FFAppState()
    //    .Feedback
    //    .add("Tree " + treeRec.ordem + " " + treeRec.descricao);
  });

  //
  //
  // Cor 1
  FFAppState().Feedback.add("Cores");
  QuerySnapshot filteredNotes = await Notes.where('Cor', isEqualTo: '1').get();
  WriteBatch batch = FirebaseFirestore.instance.batch();
  batch = FirebaseFirestore.instance.batch();
  // Notes
  filteredNotes.docs.forEach((document) async {
    batch.update(document.reference,
        {'CorCodigo': '#BED6F9', 'CorCodigoFont': '#14181B'});
  });
  await batch.commit();

  // Cor 2
  filteredNotes = await Notes.where('Cor', isEqualTo: '2').get();
  batch = FirebaseFirestore.instance.batch();
  // Notes
  filteredNotes.docs.forEach((document) async {
    batch.update(document.reference,
        {'CorCodigo': '#FFFC91', 'CorCodigoFont': '#14181B'});
  });
  await batch.commit();

  // Cor 3
  filteredNotes = await Notes.where('Cor', isEqualTo: '3').get();
  batch = FirebaseFirestore.instance.batch();
  // Notes
  filteredNotes.docs.forEach((document) async {
    batch.update(document.reference,
        {'CorCodigo': '#FBD1D1', 'CorCodigoFont': '#14181B'});
  });
  await batch.commit();

  // Cor 4
  filteredNotes = await Notes.where('Cor', isEqualTo: '4').get();
  batch = FirebaseFirestore.instance.batch();
  // Notes
  filteredNotes.docs.forEach((document) async {
    batch.update(document.reference,
        {'CorCodigo': '#C6FB99', 'CorCodigoFont': '#14181B'});
  });
  await batch.commit();

  // Cor 5
  filteredNotes = await Notes.where('Cor', isEqualTo: '5').get();
  batch = FirebaseFirestore.instance.batch();
  // Notes
  filteredNotes.docs.forEach((document) async {
    batch.update(document.reference,
        {'CorCodigo': '#14181B', 'CorCodigoFont': '#FFFFFF'});
  });
  await batch.commit();

  // Cor 6
  filteredNotes = await Notes.where('Cor', isEqualTo: '6').get();
  batch = FirebaseFirestore.instance.batch();
  // Notes
  filteredNotes.docs.forEach((document) async {
    batch.update(document.reference,
        {'CorCodigo': '#FFFFFF', 'CorCodigoFont': '#14181B'});
  });
  await batch.commit();

  //
  //
  // Nota 1
  FFAppState().Feedback.add("Notas");
  filteredNotes = await Notes.where('Nota', isEqualTo: 1).get();
  batch = FirebaseFirestore.instance.batch();
  filteredNotes.docs.forEach((document) async {
    batch.update(
        document.reference, {'NotaImagem': FFAppState().Notas[1].toString()});
  });
  await batch.commit();

  // Nota 2
  filteredNotes = await Notes.where('Nota', isEqualTo: 2).get();
  batch = FirebaseFirestore.instance.batch();
  filteredNotes.docs.forEach((document) async {
    batch.update(
        document.reference, {'NotaImagem': FFAppState().Notas[2].toString()});
  });
  await batch.commit();

  // Nota 3
  filteredNotes = await Notes.where('Nota', isEqualTo: 3).get();
  batch = FirebaseFirestore.instance.batch();
  filteredNotes.docs.forEach((document) async {
    batch.update(
        document.reference, {'NotaImagem': FFAppState().Notas[3].toString()});
  });
  await batch.commit();

  // Nota 4
  filteredNotes = await Notes.where('Nota', isEqualTo: 4).get();
  batch = FirebaseFirestore.instance.batch();
  filteredNotes.docs.forEach((document) async {
    batch.update(
        document.reference, {'NotaImagem': FFAppState().Notas[4].toString()});
  });
  await batch.commit();

  // Nota 5
  filteredNotes = await Notes.where('Nota', isEqualTo: 5).get();
  batch = FirebaseFirestore.instance.batch();
  filteredNotes.docs.forEach((document) async {
    batch.update(
        document.reference, {'NotaImagem': FFAppState().Notas[5].toString()});
  });
  await batch.commit();

  // Nota 0
  filteredNotes = await Notes.where('Nota', isEqualTo: 0).get();
  batch = FirebaseFirestore.instance.batch();
  filteredNotes.docs.forEach((document) async {
    batch.update(
        document.reference, {'NotaImagem': FFAppState().Notas[0].toString()});
  });
  await batch.commit();

  //
  //
  // Link
  FFAppState().Feedback.add("LInk");
  WriteBatch batchX = FirebaseFirestore.instance.batch();
  // Notes (LinkX = X)
  var filterNotesX = await Notes.where('LinkX', isEqualTo: 'X').get();
  for (var docNotesX in filterNotesX.docs) {
    Map<String, dynamic> dataNotesX = docNotesX.data() as Map<String, dynamic>;
    String link0 = dataNotesX['Link0'];
    //FFAppState().Feedback.add(link0 + " _____");
    // Batch (Link0 = Link0)
    var filterNotesX1 = await Notes.where('Link0', isEqualTo: link0).get();
    for (var docNotesX1 in filterNotesX1.docs) {
      Map<String, dynamic> dataNotesX1 =
          docNotesX1.data() as Map<String, dynamic>;
      //FFAppState().Feedback.add(dataNotesX1['Link0']);
      batchX.update(docNotesX1.reference, {'LinkId': docNotesX.reference});
    }
  }
  await batchX.commit();

  // Sem imagem (Tree)
  FFAppState().Feedback.add("Sem Imagem (Tree)");
  var filterImagem = await Notes.where('Imagem', isEqualTo: '').get();
  for (var docImagem in filterImagem.docs) {
    Map<String, dynamic> dataImagem = docImagem.data() as Map<String, dynamic>;
    String ordem = dataImagem['Ordem'];
    FFAppState().Feedback.add("Tree " + ordem);
  }

  FFAppState().Feedback.add("Fim --------------");
  return "ok";
}
