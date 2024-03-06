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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

Future batch(
  DocumentReference? idTree,
  String? tree1,
  String? tree2,
  String? tree3,
  String? tree4,
  String? tree5,
  String? ordem,
  String? descricao,
  String? atalho,
  String? imagem,
  String? nivel,
  String? image64,
) async {
  CollectionReference Notes = FirebaseFirestore.instance.collection('Notes');

  QuerySnapshot filteredNotes =
      await Notes.where('idTree', isEqualTo: idTree).get();

  WriteBatch batch = FirebaseFirestore.instance.batch();

  filteredNotes.docs.forEach((document) {
    batch.update(document.reference, {
      'Tree1': tree1,
      'Tree2': tree2,
      'Tree3': tree3,
      'Tree4': tree4,
      'Tree5': tree5,
      'Ordem': ordem,
      'Grupo': descricao,
      'Atalho': atalho,
      'Imagem': imagem,
      'Nivel': nivel,
      'Image64': image64,
    });
  });

  await batch.commit();
}
