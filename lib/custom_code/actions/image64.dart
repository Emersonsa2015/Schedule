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

import 'package:image_picker/image_picker.dart';
import 'dart:convert';

final ImagePicker _picker = ImagePicker();

Future<String?> image64(BuildContext context) async {
  String? image64Return;

  try {
    final XFile? photoURL = await _picker.pickImage(
        source: ImageSource.camera,
        maxHeight: 768,
        maxWidth: 1024,
        imageQuality: 50);

    if (photoURL != null) {
      var bytes = await photoURL.readAsBytes();
      image64Return = base64.encode(bytes);
    }
  } catch (e) {
    image64Return = e.toString();
  }
  return image64Return;
}
