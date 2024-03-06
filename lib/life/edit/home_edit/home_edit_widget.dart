import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/life/edit/home_edit2/home_edit2_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_edit_model.dart';
export 'home_edit_model.dart';

class HomeEditWidget extends StatefulWidget {
  const HomeEditWidget({
    super.key,
    required this.notesPar,
  });

  final NotesRecord? notesPar;

  @override
  State<HomeEditWidget> createState() => _HomeEditWidgetState();
}

class _HomeEditWidgetState extends State<HomeEditWidget> {
  late HomeEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeEditModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Favorito (Título) Memo
      setState(() {
        FFAppState().FavoritosX = widget.notesPar!.linkX;
      });
      // Favoritos (Seguir) Memo
      setState(() {
        FFAppState().FavoritosIdMemo = widget.notesPar?.linkId;
      });
    });

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
        shape: BoxShape.rectangle,
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
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      if (FFAppState().FavoritosX == '')
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.star_border_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            // Favoritos (Titulo)
                            setState(() {
                              FFAppState().FavoritosX = 'X';
                            });
                            // Titulo (Gravar)

                            await widget.notesPar!.reference
                                .update(createNotesRecordData(
                              linkX: 'X',
                              linkId: widget.notesPar?.reference,
                            ));
                            // Inicializar
                            setState(() {
                              FFAppState().FavoritosDescricao =
                                  widget.notesPar!.descricao;
                              FFAppState().FavoritosId =
                                  widget.notesPar?.reference;
                            });
                          },
                        ),
                      if (FFAppState().FavoritosX != '')
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            // Titulo (Clear)
                            setState(() {
                              FFAppState().FavoritosX = '';
                            });
                            // Deletou o Titulo (Memo)?
                            if (widget.notesPar?.reference ==
                                FFAppState().FavoritosId) {
                              // Favoritos (Clear) Tudo
                              setState(() {
                                FFAppState().FavoritosDescricao = '';
                                FFAppState().FavoritosId = null;
                                FFAppState().FavoritosIdMemo = null;
                              });
                            }
                            // Titulo (Gravar) Vazio

                            await widget.notesPar!.reference
                                .update(createNotesRecordData(
                              linkX: FFAppState().Vazio,
                            ));
                          },
                        ),
                    ],
                  ),
                  Flexible(
                    child: Stack(
                      children: [
                        if (FFAppState().FavoritosX == '')
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: Text(
                              widget.notesPar!.descricao,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        if (FFAppState().FavoritosX != '')
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: Text(
                              widget.notesPar!.descricao,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Kalam',
                                    color: FlutterFlowTheme.of(context).success,
                                    fontSize: 16.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // Nota = 1  (crudNew)
                        setState(() {
                          FFAppState().crudNew = 1.0;
                        });
                        // Notes (Update nota)

                        await FFAppState()
                            .idNotes!
                            .update(createNotesRecordData(
                              nota: 1.0,
                              notaImagem: FFAppState().Notas[1],
                            ));
                        while (FFAppState().crudLoopContador <
                            FFAppState().crudLoop) {
                          // Tree Update (Soma,Contador,Media)

                          await FFAppState()
                              .crudId[FFAppState().crudLoopContador]
                              .update(createTreeRecordData(
                                soma: FFAppState()
                                    .crudSoma[FFAppState().crudLoopContador],
                                contador: FFAppState().crudContador[
                                    FFAppState().crudLoopContador],
                                media: FFAppState()
                                    .crudMedia[FFAppState().crudLoopContador],
                              ));
                          // Feedback
                          setState(() {
                            FFAppState().addToFeedback(FFAppState()
                                .crudId[FFAppState().crudLoopContador]
                                .id);
                          });
                          // Loop + 1
                          setState(() {
                            FFAppState().crudLoopContador =
                                FFAppState().crudLoopContador + 1;
                          });
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          FFAppState().Notas[1],
                          width: 44.0,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await FFAppState()
                            .idNotes!
                            .update(createNotesRecordData(
                              nota: 2.0,
                              notaImagem: FFAppState().Notas[2],
                            ));

                        context.pushNamed('Home');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          FFAppState().Notas[2],
                          width: 44.0,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await FFAppState()
                            .idNotes!
                            .update(createNotesRecordData(
                              nota: 3.0,
                              notaImagem: FFAppState().Notas[3],
                            ));

                        context.pushNamed('Home');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          FFAppState().Notas[3],
                          width: 44.0,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await FFAppState()
                            .idNotes!
                            .update(createNotesRecordData(
                              nota: 4.0,
                              notaImagem: FFAppState().Notas[4],
                            ));

                        context.pushNamed('Home');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          FFAppState().Notas[4],
                          width: 44.0,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await FFAppState()
                            .idNotes!
                            .update(createNotesRecordData(
                              nota: 5.0,
                              notaImagem: FFAppState().Notas[5],
                            ));

                        context.pushNamed('Home');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          FFAppState().Notas[5],
                          width: 44.0,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await FFAppState()
                            .idNotes!
                            .update(createNotesRecordData(
                              nota: 0.0,
                              notaImagem: FFAppState().Notas[0],
                            ));

                        context.pushNamed('Home');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          FFAppState().Notas[0],
                          width: 44.0,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await widget.notesPar!.reference
                          .update(createNotesRecordData(
                        cor: '1',
                        corCodigo: '#BED6F9',
                        corCodigoFont: '#14181B',
                      ));

                      context.pushNamed('Home');
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 30.0,
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFBED6F9),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await widget.notesPar!.reference
                          .update(createNotesRecordData(
                        cor: '1',
                        corCodigo: '#FFFC91',
                        corCodigoFont: '#14181B',
                      ));

                      context.pushNamed('Home');
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 30.0,
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFFFFC91),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await widget.notesPar!.reference
                          .update(createNotesRecordData(
                        cor: '1',
                        corCodigo: '#FBD1D1',
                        corCodigoFont: '#14181B',
                      ));

                      context.pushNamed('Home');
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 30.0,
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFFBD1D1),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await widget.notesPar!.reference
                          .update(createNotesRecordData(
                        cor: '1',
                        corCodigo: '#C6FB99',
                        corCodigoFont: '#14181B',
                      ));

                      context.pushNamed('Home');
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 30.0,
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFC6FB99),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await widget.notesPar!.reference
                          .update(createNotesRecordData(
                        cor: '1',
                        corCodigo: '#14181B',
                        corCodigoFont: '#FFFFFF',
                      ));

                      context.pushNamed('Home');
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 30.0,
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF050505),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      await widget.notesPar!.reference
                          .update(createNotesRecordData(
                        cor: '0',
                        corCodigo: '#FFFFFF',
                        corCodigoFont: '#14181B',
                      ));

                      context.pushNamed('Home');
                    },
                    text: '',
                    options: FFButtonOptions(
                      width: 30.0,
                      height: 30.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      barrierColor: FlutterFlowTheme.of(context).accent2,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return WebViewAware(
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.28,
                              child: HomeEdit2Widget(
                                notesPar2: widget.notesPar!,
                              ),
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  text: '',
                  icon: Icon(
                    Icons.edit_square,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 27.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
                    await FFAppState().idNotes!.delete();

                    context.pushNamed('Home');
                  },
                  text: '',
                  icon: Icon(
                    Icons.delete_forever,
                    color: FlutterFlowTheme.of(context).error,
                    size: 35.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding: const EdgeInsets.all(0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                    setState(() {
                      FFAppState().Feedback = [];
                    });
                  },
                  text: '',
                  icon: const Icon(
                    Icons.exit_to_app_outlined,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFCEFC9F),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
        ],
      ),
    );
  }
}
