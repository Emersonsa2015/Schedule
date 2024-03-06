import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favoritos_edit_model.dart';
export 'favoritos_edit_model.dart';

class FavoritosEditWidget extends StatefulWidget {
  const FavoritosEditWidget({
    super.key,
    required this.linkId,
    required this.titulo,
  });

  final DocumentReference? linkId;
  final String? titulo;

  @override
  State<FavoritosEditWidget> createState() => _FavoritosEditWidgetState();
}

class _FavoritosEditWidgetState extends State<FavoritosEditWidget> {
  late FavoritosEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoritosEditModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      valueOrDefault<String>(
                        widget.titulo,
                        'Titulo',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Kalam',
                            color: FlutterFlowTheme.of(context).success,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              decoration: const BoxDecoration(),
              child: StreamBuilder<List<NotesRecord>>(
                stream: queryNotesRecord(
                  queryBuilder: (notesRecord) => notesRecord
                      .where(
                        'LinkId',
                        isEqualTo: widget.linkId,
                      )
                      .orderBy('Date', descending: true),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<NotesRecord> lvWeeksNotesRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: lvWeeksNotesRecordList.length,
                    itemBuilder: (context, lvWeeksIndex) {
                      final lvWeeksNotesRecord =
                          lvWeeksNotesRecordList[lvWeeksIndex];
                      return Visibility(
                        visible: lvWeeksNotesRecord.linkX == '',
                        child: Container(
                          decoration: BoxDecoration(
                            color: FFAppState().chartIdLv ==
                                    lvWeeksNotesRecord.reference
                                ? FlutterFlowTheme.of(context).accent2
                                : const Color(0x00000000),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: Image.network(
                                          lvWeeksNotesRecord.imagem,
                                          width: 30.0,
                                          height: 30.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                lvWeeksNotesRecord.week
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                            Flexible(
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                        .updateChartImagemAtIndex(
                                                      FFAppState().chartIndexLv,
                                                      (_) => lvWeeksNotesRecord
                                                          .imagem,
                                                    );
                                                    FFAppState()
                                                        .updateChartDescricaoAtIndex(
                                                      FFAppState().chartIndexLv,
                                                      (_) => lvWeeksNotesRecord
                                                          .descricao,
                                                    );
                                                  });

                                                  await FFAppState()
                                                      .chartIdLv!
                                                      .update(
                                                          createNotesRecordData(
                                                        year: ' ',
                                                      ));

                                                  await lvWeeksNotesRecord
                                                      .reference
                                                      .update(
                                                          createNotesRecordData(
                                                    year: 'Y',
                                                  ));
                                                  setState(() {
                                                    FFAppState()
                                                        .updateChartIdAtIndex(
                                                      FFAppState().chartIndexLv,
                                                      (_) => lvWeeksNotesRecord
                                                          .reference,
                                                    );
                                                  });
                                                  setState(() {
                                                    FFAppState().chartIdLv =
                                                        lvWeeksNotesRecord
                                                            .reference;
                                                  });
                                                },
                                                child: Text(
                                                  lvWeeksNotesRecord.descricao,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 16.0, 8.0),
                                    child: Text(
                                      lvWeeksNotesRecord.nota.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
