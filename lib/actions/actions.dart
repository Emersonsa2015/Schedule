import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

Future yearGrupo5(BuildContext context) async {
  List<NotesRecord>? notesYearGrupo5;
  String? yearGrupo5Output;
  String? yearG5Output;

  notesYearGrupo5 = await queryNotesRecordOnce(
    queryBuilder: (notesRecord) => notesRecord
        .where(
          'Usuario',
          isEqualTo: currentUserReference,
        )
        .where(
          'Date',
          isGreaterThanOrEqualTo: FFAppState().DataIni,
        )
        .where(
          'Date',
          isLessThanOrEqualTo: FFAppState().DataFim,
        )
        .orderBy('Date'),
  );
  if (notesYearGrupo5.isNotEmpty) {
    FFAppState().grupoMemo = '5';
    yearGrupo5Output = await actions.year(
      notesYearGrupo5.toList(),
      FFAppState().grupoMemo,
    );
    yearG5Output = await actions.yearG5();
    if (yearG5Output != 'OK') {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return WebViewAware(
            child: AlertDialog(
              title: const Text('Erro do sistema'),
              content: Text(yearG5Output!),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            ),
          );
        },
      );
    }
  }
}

Future yearGrupos(BuildContext context) async {
  List<NotesRecord>? notesYearGrupos;
  String? yearGruposOutput;

  notesYearGrupos = await queryNotesRecordOnce(
    queryBuilder: (notesRecord) => notesRecord
        .where(
          'Usuario',
          isEqualTo: currentUserReference,
        )
        .where(
          'Date',
          isGreaterThanOrEqualTo: FFAppState().DataIni,
        )
        .where(
          'Date',
          isLessThanOrEqualTo: FFAppState().DataFim,
        )
        .where(
          'Tree1',
          isEqualTo: FFAppState().grupoMemo,
        )
        .orderBy('Date'),
  );
  if (notesYearGrupos.isNotEmpty) {
    yearGruposOutput = await actions.year(
      notesYearGrupos.toList(),
      FFAppState().grupoMemo,
    );
  } else {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '-  OFFLINE  -',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: const Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  }
}

Future treeAlteracao(BuildContext context) async {
  List<NotesRecord>? notesTree;
  String? treeAlteracaoOutput;

  notesTree = await queryNotesRecordOnce(
    queryBuilder: (notesRecord) => notesRecord
        .where(
          'Date',
          isGreaterThanOrEqualTo: FFAppState().DataIni,
        )
        .where(
          'Date',
          isLessThanOrEqualTo: FFAppState().DataFim,
        )
        .where(
          'idTree',
          isEqualTo: FFAppState().idtree,
        )
        .orderBy('Date'),
  );
  treeAlteracaoOutput = await actions.treeAlteracao(
    notesTree.toList(),
  );
}

Future treeOffline(BuildContext context) async {
  List<TreeRecord>? treeOfflineOutput;

  treeOfflineOutput = await queryTreeRecordOnce(
    queryBuilder: (treeRecord) => treeRecord.orderBy('Ordem'),
  );
  if (treeOfflineOutput.isNotEmpty) {
    FFAppState().treeImage64 = [];
    FFAppState().loopContador = 0;
    FFAppState().feedbackTree = [];
    FFAppState().treeOrdem = [];
    while (FFAppState().loopContador <= treeOfflineOutput.length) {
      FFAppState().addToFeedbackTree(
          '${treeOfflineOutput[FFAppState().loopContador].ordem}   ${treeOfflineOutput[FFAppState().loopContador].image64}');
      FFAppState()
          .addToTreeOrdem(treeOfflineOutput[FFAppState().loopContador].ordem);
      FFAppState().update(() {
        FFAppState().addToTreeImage64(
            treeOfflineOutput![FFAppState().loopContador].image64);
      });
      FFAppState().loopContador = FFAppState().loopContador + 1;
    }
  } else {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '-  OFFLINE  - Tree',
          style: TextStyle(
            color: FlutterFlowTheme.of(context).info,
          ),
        ),
        duration: const Duration(milliseconds: 1000),
        backgroundColor: FlutterFlowTheme.of(context).error,
      ),
    );
  }
}
