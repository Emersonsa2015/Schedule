import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'year_edit_model.dart';
export 'year_edit_model.dart';

class YearEditWidget extends StatefulWidget {
  const YearEditWidget({
    super.key,
    required this.chartNumeroLV,
  });

  final int? chartNumeroLV;

  @override
  State<YearEditWidget> createState() => _YearEditWidgetState();
}

class _YearEditWidgetState extends State<YearEditWidget>
    with TickerProviderStateMixin {
  late YearEditModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YearEditModel());

    _model.tfEntryController ??= TextEditingController(
        text: FFAppState().chartDescricao[FFAppState().chartIndexLv]);
    _model.tfEntryFocusNode ??= FocusNode();

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
                  Text(
                    'Semana ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Kalam',
                          color: FlutterFlowTheme.of(context).success,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.chartNumeroLV?.toString(),
                      '0',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Kalam',
                          color: FlutterFlowTheme.of(context).success,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final lvG5 = FFAppState().yearDescricaoD.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: lvG5.length,
                        itemBuilder: (context, lvG5Index) {
                          final lvG5Item = lvG5[lvG5Index];
                          return Container(
                            decoration: BoxDecoration(
                              color: FFAppState().chartIdLv ==
                                      FFAppState().yearIdD[lvG5Index]
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
                                            FFAppState().yearImagemD[lvG5Index],
                                            width: 30.0,
                                            height: 30.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.yearG5IndexOutput =
                                                  await actions.yearG5Index(
                                                lvG5Index,
                                              );
                                              setState(() {
                                                _model.tfEntryController?.text =
                                                    FFAppState().yearDescricaoD[
                                                        lvG5Index];
                                              });
                                              // Year Vazio
                                              unawaited(
                                                () async {
                                                  await FFAppState()
                                                      .chartIdLv!
                                                      .update(
                                                          createNotesRecordData(
                                                        year:
                                                            FFAppState().Vazio,
                                                      ));
                                                }(),
                                              );
                                              // Usado na cor( listView)
                                              _model.updatePage(() {
                                                FFAppState().chartIdLv =
                                                    FFAppState()
                                                        .yearIdD[lvG5Index];
                                              });
                                              setState(() {
                                                FFAppState()
                                                    .updateChartImagemAtIndex(
                                                  FFAppState().chartIndexLv,
                                                  (_) => FFAppState()
                                                      .yearImagemD[lvG5Index],
                                                );
                                                FFAppState()
                                                    .updateChartDescricaoAtIndex(
                                                  FFAppState().chartIndexLv,
                                                  (_) => FFAppState()
                                                          .yearDescricaoD[
                                                      lvG5Index],
                                                );
                                                FFAppState()
                                                    .updateChartIdAtIndex(
                                                  FFAppState().chartIndexLv,
                                                  (_) => FFAppState()
                                                      .yearIdD[lvG5Index],
                                                );
                                              });
                                              unawaited(
                                                () async {
                                                  await FFAppState()
                                                      .yearIdD[lvG5Index]
                                                      .update(
                                                          createNotesRecordData(
                                                        year: 'Y',
                                                      ));
                                                }(),
                                              );

                                              setState(() {});
                                            },
                                            child: Text(
                                              lvG5Item,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 16.0, 8.0),
                                      child: Text(
                                        FFAppState()
                                            .yearNotaD[lvG5Index]
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 8.0, 8.0),
                                      child: Text(
                                        FFAppState().yearYearD[lvG5Index],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                if (FFAppState().grupoMemo == '9')
                  Container(
                    decoration: const BoxDecoration(),
                    child: StreamBuilder<List<NotesRecord>>(
                      stream: queryNotesRecord(
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
                              'Week',
                              isEqualTo: widget.chartNumeroLV,
                            )
                            .where(
                              'Tree1',
                              isEqualTo: FFAppState().grupoMemo,
                            )
                            .orderBy('Date'),
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
                        List<NotesRecord> lvWeeksNotesRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: lvWeeksNotesRecordList.length,
                          itemBuilder: (context, lvWeeksIndex) {
                            final lvWeeksNotesRecord =
                                lvWeeksNotesRecordList[lvWeeksIndex];
                            return Container(
                              decoration: BoxDecoration(
                                color: FFAppState().chartIdLv ==
                                        lvWeeksNotesRecord.reference
                                    ? FlutterFlowTheme.of(context).accent2
                                    : const Color(0x00000000),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                // Year Vazio
                                                unawaited(
                                                  () async {
                                                    await FFAppState()
                                                        .chartIdLv!
                                                        .update(
                                                            createNotesRecordData(
                                                          year: FFAppState()
                                                              .Vazio,
                                                        ));
                                                  }(),
                                                );
                                                // Usado na cor( listView)
                                                setState(() {
                                                  FFAppState().chartIdLv =
                                                      lvWeeksNotesRecord
                                                          .reference;
                                                });
                                                unawaited(
                                                  () async {
                                                    await lvWeeksNotesRecord
                                                        .reference
                                                        .update(
                                                            createNotesRecordData(
                                                      year: 'Y',
                                                    ));
                                                  }(),
                                                );
                                                setState(() {
                                                  _model.tfEntryController
                                                          ?.text =
                                                      lvWeeksNotesRecord
                                                          .descricao;
                                                });
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
                                                  FFAppState()
                                                      .updateChartIdAtIndex(
                                                    FFAppState().chartIndexLv,
                                                    (_) => lvWeeksNotesRecord
                                                        .reference,
                                                  );
                                                });
                                              },
                                              child: Text(
                                                lvWeeksNotesRecord.descricao,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
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
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 8.0, 8.0),
                                        child: Text(
                                          lvWeeksNotesRecord.year,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: const BoxDecoration(
                color: Color(0xFFC6FB99),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFC6FB99),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.network(
                                FFAppState()
                                    .chartImagem[FFAppState().chartIndexLv],
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation1']!),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.tfEntryController,
                                  focusNode: _model.tfEntryFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Digie aqui...',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.tfEntryControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await FFAppState()
                            .chartIdLv!
                            .update(createNotesRecordData(
                              descricao: _model.tfEntryController.text,
                            ));
                        setState(() {
                          FFAppState().updateChartDescricaoAtIndex(
                            FFAppState().chartIndexLv,
                            (_) => _model.tfEntryController.text,
                          );
                          FFAppState().updateYearDescricaoDAtIndex(
                            FFAppState().yearIndexAntesD,
                            (_) => _model.tfEntryController.text,
                          );
                          FFAppState().updateYearDescricaoAtIndex(
                            FFAppState().yearIndexAntes,
                            (_) => _model.tfEntryController.text,
                          );
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Entry.jpg?alt=media&token=90590a80-f350-42b4-b223-9da1cb0967d3',
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation2']!),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
