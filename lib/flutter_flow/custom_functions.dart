import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/firebase_auth/auth_util.dart';

String? converter64PngOld(String? imageBase64) {
  if (imageBase64 == null) {
    return null;
  }

  return 'data:image/png;base64,' + imageBase64;
}

String? converterBase64PNG(String? imageBase64) {
  // converta imagem base 64 em png
  if (imageBase64 == null) {
    return null;
  }
  return 'data:image/png;base64,' + imageBase64;
}
