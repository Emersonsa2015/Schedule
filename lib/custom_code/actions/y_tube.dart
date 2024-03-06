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

import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<String> yTube() async {
  FFAppState().Feedback.add("Inicio 13:53 ");

  var yt = YoutubeExplode();
  //var videoId = 'https://www.youtube.com/shorts/IExcP2spfFY';
  //var videoId = 'IExcP2spfFY';

  try {
    // You can provide either a video ID or URL as String or an instance of `VideoId`.
    var video = await yt.videos.get(
        'https://youtube.com/watch?v=Dpp1sIL1m5Q'); // Returns a Video instance.

    var titulo = video.title; // "Scamazon Prime"
    var author = video.author; // "Jim Browning"
    var duration = video.duration; // Instance of Duration - 0:19:48.00000

    //var video = await yt.videos.get(videoId);
    //var titulo = video.title;
    FFAppState().Feedback.add('Título do vídeo: $titulo');
    return titulo;
  } on Exception catch (e) {
    FFAppState().Feedback.add('Erro ao obter o título do vídeo: $e');
    return 'Erro: $e';
  } finally {
    yt.close();
  }
}
