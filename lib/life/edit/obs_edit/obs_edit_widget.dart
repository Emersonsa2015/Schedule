import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'obs_edit_model.dart';
export 'obs_edit_model.dart';

class ObsEditWidget extends StatefulWidget {
  const ObsEditWidget({
    super.key,
    required this.mes0Par,
  });

  final String? mes0Par;

  @override
  State<ObsEditWidget> createState() => _ObsEditWidgetState();
}

class _ObsEditWidgetState extends State<ObsEditWidget> {
  late ObsEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ObsEditModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dataObsOutput = await actions.dataObs(
        widget.mes0Par!,
      );
      _model.obsQuery0 = await queryObsRecordOnce(
        queryBuilder: (obsRecord) => obsRecord
            .where(
              'Date',
              isEqualTo: _model.dataObsOutput,
            )
            .where(
              'Ordem',
              isEqualTo: FFAppState().grupoMemo,
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      if (_model.obsQuery0?.reference != null) {
        setState(() {
          _model.tfTituloController?.text = _model.obsQuery0!.titulo;
        });
        setState(() {
          _model.tfObsController?.text = _model.obsQuery0!.obs;
        });
      } else {
        setState(() {
          _model.tfTituloController?.clear();
          _model.tfObsController?.clear();
        });
      }
    });

    _model.tfTituloController ??= TextEditingController();
    _model.tfTituloFocusNode ??= FocusNode();

    _model.tfObsController ??= TextEditingController();
    _model.tfObsFocusNode ??= FocusNode();

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
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.mes0Par!,
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
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).success,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.tfTituloController,
                              focusNode: _model.tfTituloFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Digite um título...',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.tfTituloControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: TextFormField(
                                controller: _model.tfObsController,
                                focusNode: _model.tfObsFocusNode,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Faça um resumo... ',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                maxLines: 6,
                                validator: _model.tfObsControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        _model.obsQuery = await queryObsRecordOnce(
                          queryBuilder: (obsRecord) => obsRecord
                              .where(
                                'Date',
                                isEqualTo: _model.dataObsOutput,
                              )
                              .where(
                                'Ordem',
                                isEqualTo: FFAppState().grupoMemo,
                              ),
                          singleRecord: true,
                        ).then((s) => s.firstOrNull);
                        if (_model.obsQuery?.reference == null) {
                          await ObsRecord.collection
                              .doc()
                              .set(createObsRecordData(
                                date: _model.dataObsOutput,
                                ordem: FFAppState().grupoMemo,
                                grupo: FFAppState().grupoMemo,
                                titulo: _model.tfTituloController.text,
                                obs: _model.tfObsController.text,
                              ));
                        } else {
                          await _model.obsQuery!.reference
                              .update(createObsRecordData(
                            titulo: _model.tfTituloController.text,
                            obs: _model.tfObsController.text,
                          ));
                        }

                        Navigator.pop(context);

                        setState(() {});
                      },
                      text: '',
                      icon: Icon(
                        Icons.check_rounded,
                        color: FlutterFlowTheme.of(context).success,
                        size: 34.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          _model.tfTituloController?.clear();
                          _model.tfObsController?.clear();
                        });
                        unawaited(
                          () async {
                            await _model.obsQuery0!.reference.delete();
                          }(),
                        );
                        Navigator.pop(context);
                      },
                      text: '',
                      icon: Icon(
                        Icons.delete_forever,
                        color: FlutterFlowTheme.of(context).error,
                        size: 34.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: '',
                      icon: const Icon(
                        Icons.exit_to_app_outlined,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFCEFC9F),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Color(0xFFCEFC9F),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
