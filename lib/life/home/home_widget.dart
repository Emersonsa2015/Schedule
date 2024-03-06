import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/life/edit/edit/edit_widget.dart';
import '/life/edit/home_edit/home_edit_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().DataIni == null) {
        _model.anoMemoOutout = await actions.anoMemo(
          FFAppState().AnoMemo,
        );
      }
      if (FFAppState().Nivel == '') {
        setState(() {
          FFAppState().Nivel = '0';
        });
        setState(() {
          FFAppState().addToVarTree(TreeStruct(
            ordem: '0',
            descricao: 'Life',
            imagem:
                'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Tree.jpg?alt=media&token=43c91f06-8ba6-43ee-b41b-824e21062aea&_gl=1*1v26vo*_ga*MTExOTAzMDE2My4xNjkyOTgxOTcx*_ga_CW55HF8NVT*MTY5NjQzNDM1OC43Mi4xLjE2OTY0MzYxMDQuNjAuMC4w',
            nivel: '-1',
          ));
        });
      }
      setState(() {
        FFAppState().Settings = false;
      });
      setState(() {
        FFAppState().SettingsPatch =
            'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Tree.jpg?alt=media&token=43c91f06-8ba6-43ee-b41b-824e21062aea';
      });
      setState(() {
        FFAppState().VarNotes = NotesStruct();
      });
      setState(() {
        FFAppState().EntryFlag = 'New';
      });
      setState(() {
        _model.tfEntryController?.clear();
      });
      setState(() {
        FFAppState().filtroNotes = '-1';
      });
      setState(() {
        FFAppState().sistemaFsize = 14;
      });
      setState(() {
        FFAppState().sistemaFtype = '1';
      });
      setState(() {
        FFAppState().flagFiltroNotes = false;
      });
    });

    _model.tfEntryController ??= TextEditingController();
    _model.tfEntryFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<NotesRecord>>(
      stream: FFAppState().queryNotes0(
        requestFn: () => queryNotesRecord(
          queryBuilder: (notesRecord) => notesRecord
              .where(
                'Usuario',
                isEqualTo: currentUserReference,
              )
              .orderBy('Date', descending: true),
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<NotesRecord> homeNotesRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: WebViewAware(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Pefil1.png?alt=media&token=ccf80b4f-393d-41cb-b70c-9b6754bfabe4',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Emerson Sá',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).success,
                                  fontSize: 16.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currentUserEmail,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).success,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 8.0, 0.0),
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }

                                  context.pushNamed('Tree');
                                },
                                child: ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.leaf,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 27.0,
                                  ),
                                  title: Text(
                                    'Tree',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Kalam',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }

                                  context.pushNamed(
                                    'Chart',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.scale,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                    },
                                  );
                                },
                                child: ListTile(
                                  leading: Icon(
                                    Icons.area_chart_rounded,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 30.0,
                                  ),
                                  title: Text(
                                    'Gráficos',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Kalam',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }

                                  context.pushNamed(
                                    'Favoritos',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                      ),
                                    },
                                  );
                                },
                                child: ListTile(
                                  leading: Icon(
                                    Icons.star_rounded,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 34.0,
                                  ),
                                  title: Text(
                                    'Favoritos',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Kalam',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }

                                  context.pushNamed('Lock');
                                },
                                child: ListTile(
                                  leading: Icon(
                                    Icons.settings_outlined,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 32.0,
                                  ),
                                  title: Text(
                                    'Lock',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Kalam',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }

                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();

                                  context.goNamedAuth(
                                      'LandingPage', context.mounted);
                                },
                                child: ListTile(
                                  leading: Icon(
                                    Icons.output_sharp,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 30.0,
                                  ),
                                  title: Text(
                                    'Sair',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Kalam',
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  snap: true,
                  backgroundColor: const Color(0xFFC6FB99),
                  iconTheme: IconThemeData(
                      color: FlutterFlowTheme.of(context).primaryText),
                  automaticallyImplyLeading: true,
                  title: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Life 15:17',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Kalam',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 30.0,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: FaIcon(
                                FontAwesomeIcons.search,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                setState(() {
                                  FFAppState().FlagPesquisa = 'OK';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  actions: const [],
                  centerTitle: false,
                  elevation: 0.0,
                )
              ],
              body: Builder(
                builder: (context) {
                  return SafeArea(
                    top: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: StreamBuilder<List<NotesRecord>>(
                                      stream: FFAppState().queryNotes(
                                        requestFn: () => queryNotesRecord(
                                          queryBuilder: (notesRecord) =>
                                              notesRecord
                                                  .where(
                                                    'Usuario',
                                                    isEqualTo:
                                                        currentUserReference,
                                                  )
                                                  .where(
                                                    'Date',
                                                    isGreaterThanOrEqualTo:
                                                        FFAppState().DataIni,
                                                  )
                                                  .where(
                                                    'Date',
                                                    isLessThanOrEqualTo:
                                                        FFAppState().DataFim,
                                                  )
                                                  .orderBy('Date',
                                                      descending: true),
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<NotesRecord>
                                            lvNotesNotesRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          reverse: true,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              lvNotesNotesRecordList.length,
                                          itemBuilder: (context, lvNotesIndex) {
                                            final lvNotesNotesRecord =
                                                lvNotesNotesRecordList[
                                                    lvNotesIndex];
                                            return Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 48.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  if (lvNotesNotesRecord
                                                          .nivel !=
                                                      '9')
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .filtroNotes =
                                                                        lvNotesNotesRecord
                                                                            .ordem;
                                                                  });
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .flagFiltroNotes =
                                                                        true;
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30.0),
                                                                  child: Image
                                                                      .network(
                                                                    lvNotesNotesRecord
                                                                        .imagem,
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.68,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    colorFromCssString(
                                                                  lvNotesNotesRecord
                                                                      .corCodigo,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30.0),
                                                              ),
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .idNotes =
                                                                          lvNotesNotesRecord
                                                                              .reference;
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      _model.tfEntryController
                                                                              ?.text =
                                                                          lvNotesNotesRecord
                                                                              .descricao;
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .SettingsPatch =
                                                                          lvNotesNotesRecord
                                                                              .imagem;
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .updateVarNotesStruct(
                                                                        (e) => e
                                                                          ..tree1 =
                                                                              lvNotesNotesRecord.tree1
                                                                          ..tree2 =
                                                                              lvNotesNotesRecord.tree2
                                                                          ..tree3 =
                                                                              lvNotesNotesRecord.tree3
                                                                          ..tree4 =
                                                                              lvNotesNotesRecord.tree4
                                                                          ..tree5 =
                                                                              lvNotesNotesRecord.tree5
                                                                          ..ordem =
                                                                              lvNotesNotesRecord.ordem
                                                                          ..atalho =
                                                                              lvNotesNotesRecord.atalho
                                                                          ..nivel =
                                                                              lvNotesNotesRecord.nivel
                                                                          ..imagem =
                                                                              lvNotesNotesRecord.imagem
                                                                          ..grupo =
                                                                              lvNotesNotesRecord.grupo
                                                                          ..idTree =
                                                                              lvNotesNotesRecord.idTree,
                                                                      );
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                              .EntryFlag =
                                                                          'Edit';
                                                                    });
                                                                  },
                                                                  onLongPress:
                                                                      () async {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      barrierColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .accent2,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: SizedBox(
                                                                                height: MediaQuery.sizeOf(context).height * 0.5,
                                                                                child: EditWidget(
                                                                                  notesPar: lvNotesNotesRecord,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                  child: Text(
                                                                    lvNotesNotesRecord
                                                                        .descricao,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              colorFromCssString(
                                                                            valueOrDefault<String>(
                                                                              lvNotesNotesRecord.corCodigoFont,
                                                                              '#000000',
                                                                            ),
                                                                            defaultColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                barrierColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.38,
                                                                          child:
                                                                              HomeEditWidget(
                                                                            notesPar:
                                                                                lvNotesNotesRecord,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));

                                                              setState(() {
                                                                FFAppState()
                                                                        .idNotes =
                                                                    lvNotesNotesRecord
                                                                        .reference;
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                    .updateVarNotesStruct(
                                                                  (e) => e
                                                                    ..date =
                                                                        lvNotesNotesRecord
                                                                            .date,
                                                                );
                                                              });
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                              child:
                                                                  Image.network(
                                                                lvNotesNotesRecord
                                                                    .notaImagem,
                                                                width: 40.0,
                                                                height: 40.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  if (lvNotesNotesRecord
                                                          .nivel ==
                                                      '9')
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Stack(
                                                              children: [
                                                                if (FFAppState()
                                                                        .sistemaFtype ==
                                                                    '1')
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.83,
                                                                    height:
                                                                        44.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30.0),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            FFAppState().idNotes =
                                                                                lvNotesNotesRecord.reference;
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            FFAppState().updateVarNotesStruct(
                                                                              (e) => e..date = lvNotesNotesRecord.date,
                                                                            );
                                                                          });

                                                                          context
                                                                              .pushNamed(
                                                                            'Notas_old',
                                                                            queryParameters:
                                                                                {
                                                                              'notesPar': serializeParam(
                                                                                lvNotesNotesRecord,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'notesPar': lvNotesNotesRecord,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          lvNotesNotesRecord
                                                                              .descricao,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: FFAppState().sistemaFsize.toDouble(),
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (FFAppState()
                                                                        .sistemaFtype ==
                                                                    '2')
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.83,
                                                                    height:
                                                                        44.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30.0),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            FFAppState().idNotes =
                                                                                lvNotesNotesRecord.reference;
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            FFAppState().updateVarNotesStruct(
                                                                              (e) => e..date = lvNotesNotesRecord.date,
                                                                            );
                                                                          });

                                                                          context
                                                                              .pushNamed(
                                                                            'Notas_old',
                                                                            queryParameters:
                                                                                {
                                                                              'notesPar': serializeParam(
                                                                                lvNotesNotesRecord,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'notesPar': lvNotesNotesRecord,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          lvNotesNotesRecord
                                                                              .descricao,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Oswald',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: FFAppState().sistemaFsize.toDouble(),
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (FFAppState()
                                                                        .sistemaFtype ==
                                                                    '3')
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.83,
                                                                    height:
                                                                        44.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30.0),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            FFAppState().idNotes =
                                                                                lvNotesNotesRecord.reference;
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            FFAppState().updateVarNotesStruct(
                                                                              (e) => e..date = lvNotesNotesRecord.date,
                                                                            );
                                                                          });

                                                                          context
                                                                              .pushNamed(
                                                                            'Notas_old',
                                                                            queryParameters:
                                                                                {
                                                                              'notesPar': serializeParam(
                                                                                lvNotesNotesRecord,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'notesPar': lvNotesNotesRecord,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Text(
                                                                          lvNotesNotesRecord
                                                                              .descricao,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Kalam',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: FFAppState().sistemaFsize.toDouble(),
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ],
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
                                  if (FFAppState().flagFiltroNotes == true)
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: StreamBuilder<List<NotesRecord>>(
                                        stream: queryNotesRecord(
                                          queryBuilder: (notesRecord) =>
                                              notesRecord
                                                  .where(
                                                    'Usuario',
                                                    isEqualTo:
                                                        currentUserReference,
                                                  )
                                                  .where(
                                                    'Ordem',
                                                    isEqualTo: FFAppState()
                                                        .filtroNotes,
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
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<NotesRecord>
                                              lvNotesNotesRecordList =
                                              snapshot.data!;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                lvNotesNotesRecordList.length,
                                            itemBuilder:
                                                (context, lvNotesIndex) {
                                              final lvNotesNotesRecord =
                                                  lvNotesNotesRecordList[
                                                      lvNotesIndex];
                                              return Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {
                                                                FFAppState()
                                                                        .filtroNotes =
                                                                    '-1';
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                        .flagFiltroNotes =
                                                                    false;
                                                              });
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                              child:
                                                                  Image.network(
                                                                lvNotesNotesRecord
                                                                    .imagem,
                                                                width: 40.0,
                                                                height: 40.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.73,
                                                          height: 44.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                colorFromCssString(
                                                              lvNotesNotesRecord
                                                                  .corCodigo,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .idNotes =
                                                                      lvNotesNotesRecord
                                                                          .reference;
                                                                });
                                                                setState(() {
                                                                  _model.tfEntryController
                                                                          ?.text =
                                                                      lvNotesNotesRecord
                                                                          .descricao;
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                          .SettingsPatch =
                                                                      lvNotesNotesRecord
                                                                          .imagem;
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                      .updateVarNotesStruct(
                                                                    (e) => e
                                                                      ..tree1 =
                                                                          lvNotesNotesRecord
                                                                              .tree1
                                                                      ..tree2 =
                                                                          lvNotesNotesRecord
                                                                              .tree2
                                                                      ..tree3 =
                                                                          lvNotesNotesRecord
                                                                              .tree3
                                                                      ..tree4 =
                                                                          lvNotesNotesRecord
                                                                              .tree4
                                                                      ..tree5 =
                                                                          lvNotesNotesRecord
                                                                              .tree5
                                                                      ..ordem =
                                                                          lvNotesNotesRecord
                                                                              .ordem
                                                                      ..atalho =
                                                                          lvNotesNotesRecord
                                                                              .atalho
                                                                      ..nivel =
                                                                          lvNotesNotesRecord
                                                                              .nivel
                                                                      ..imagem =
                                                                          lvNotesNotesRecord
                                                                              .imagem
                                                                      ..grupo =
                                                                          lvNotesNotesRecord
                                                                              .grupo
                                                                      ..idTree =
                                                                          lvNotesNotesRecord
                                                                              .idTree,
                                                                  );
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                          .EntryFlag =
                                                                      'Edit';
                                                                });
                                                              },
                                                              child: Text(
                                                                lvNotesNotesRecord
                                                                    .descricao,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color:
                                                                          colorFromCssString(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          lvNotesNotesRecord
                                                                              .corCodigoFont,
                                                                          '#000000',
                                                                        ),
                                                                        defaultColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                      ),
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .idNotes =
                                                                lvNotesNotesRecord
                                                                    .reference;
                                                          });
                                                          setState(() {
                                                            FFAppState()
                                                                .updateVarNotesStruct(
                                                              (e) => e
                                                                ..date =
                                                                    lvNotesNotesRecord
                                                                        .date,
                                                            );
                                                          });

                                                          context.pushNamed(
                                                            'Notas_old',
                                                            queryParameters: {
                                                              'notesPar':
                                                                  serializeParam(
                                                                lvNotesNotesRecord,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'notesPar':
                                                                  lvNotesNotesRecord,
                                                            },
                                                          );
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                          child: Image.network(
                                                            lvNotesNotesRecord
                                                                .notaImagem,
                                                            width: 40.0,
                                                            height: 40.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  if (FFAppState().Settings)
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 8.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Builder(
                                                builder: (context) {
                                                  final cabec = FFAppState()
                                                      .VarTree
                                                      .toList()
                                                      .take(5)
                                                      .toList();
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: cabec.length,
                                                    itemBuilder:
                                                        (context, cabecIndex) {
                                                      final cabecItem =
                                                          cabec[cabecIndex];
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFBAF987),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {
                                                                FFAppState()
                                                                        .Nivel =
                                                                    cabecItem
                                                                        .ordem;
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                        .CabecCount =
                                                                    FFAppState()
                                                                        .VarTree
                                                                        .length;
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                        .CabecCount =
                                                                    FFAppState()
                                                                            .CabecCount +
                                                                        -1;
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                        .CabecIndex =
                                                                    cabecIndex;
                                                              });
                                                              while (FFAppState()
                                                                      .CabecCount >
                                                                  FFAppState()
                                                                      .CabecIndex) {
                                                                setState(() {
                                                                  FFAppState().removeAtIndexFromVarTree(
                                                                      FFAppState()
                                                                          .CabecCount);
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                          .CabecCount =
                                                                      FFAppState()
                                                                              .CabecCount +
                                                                          -1;
                                                                });
                                                              }
                                                              if (FFAppState()
                                                                      .CabecCount ==
                                                                  0) {}
                                                            },
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30.0),
                                                                    child: Image
                                                                        .network(
                                                                      cabecItem
                                                                          .imagem,
                                                                      width:
                                                                          40.0,
                                                                      height:
                                                                          40.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    cabecItem
                                                                        .descricao,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: StreamBuilder<
                                                    List<TreeRecord>>(
                                                  stream:
                                                      FFAppState().queryTree(
                                                    requestFn: () =>
                                                        queryTreeRecord(
                                                      queryBuilder:
                                                          (treeRecord) =>
                                                              treeRecord
                                                                  .orderBy(
                                                                      'Ordem'),
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<TreeRecord>
                                                        lvTreeTreeRecordList =
                                                        snapshot.data!;
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          lvTreeTreeRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          lvTreeIndex) {
                                                        final lvTreeTreeRecord =
                                                            lvTreeTreeRecordList[
                                                                lvTreeIndex];
                                                        return Visibility(
                                                          visible:
                                                              lvTreeTreeRecord
                                                                      .nivel ==
                                                                  FFAppState()
                                                                      .Nivel,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .Nivel =
                                                                        lvTreeTreeRecord
                                                                            .ordem;
                                                                  });
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .SettingsPatch =
                                                                        lvTreeTreeRecord
                                                                            .imagem;
                                                                  });
                                                                  setState(() {
                                                                    FFAppState()
                                                                        .addToVarTree(
                                                                            TreeStruct(
                                                                      tree1: lvTreeTreeRecord
                                                                          .root,
                                                                      tree2: lvTreeTreeRecord
                                                                          .tree,
                                                                      tree3: lvTreeTreeRecord
                                                                          .tree1,
                                                                      tree4: lvTreeTreeRecord
                                                                          .tree2,
                                                                      tree5: lvTreeTreeRecord
                                                                          .tree3,
                                                                      ordem: lvTreeTreeRecord
                                                                          .ordem,
                                                                      descricao:
                                                                          lvTreeTreeRecord
                                                                              .descricao,
                                                                      atalho: lvTreeTreeRecord
                                                                          .atalho,
                                                                      imagem: lvTreeTreeRecord
                                                                          .imagem,
                                                                      nivel: lvTreeTreeRecord
                                                                          .nivel,
                                                                      flag: lvTreeTreeRecord
                                                                          .flag,
                                                                    ));
                                                                  });
                                                                  setState(() {
                                                                    FFAppState()
                                                                        .updateVarNotesStruct(
                                                                      (e) => e
                                                                        ..tree1 =
                                                                            lvTreeTreeRecord.root
                                                                        ..tree2 =
                                                                            lvTreeTreeRecord.tree
                                                                        ..tree3 =
                                                                            lvTreeTreeRecord.tree1
                                                                        ..tree4 =
                                                                            lvTreeTreeRecord.tree2
                                                                        ..tree5 =
                                                                            lvTreeTreeRecord.tree3
                                                                        ..ordem =
                                                                            lvTreeTreeRecord.ordem
                                                                        ..atalho =
                                                                            lvTreeTreeRecord.atalho
                                                                        ..imagem =
                                                                            lvTreeTreeRecord.imagem
                                                                        ..nivel =
                                                                            lvTreeTreeRecord.nivel
                                                                        ..grupo =
                                                                            lvTreeTreeRecord.descricao
                                                                        ..idTree =
                                                                            lvTreeTreeRecord.reference,
                                                                    );
                                                                  });
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(30.0),
                                                                        child: Image
                                                                            .network(
                                                                          lvTreeTreeRecord
                                                                              .imagem,
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        lvTreeTreeRecord
                                                                            .descricao,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 16.0, 4.0, 4.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 190.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: StreamBuilder<
                                                    List<TreeRecord>>(
                                                  stream:
                                                      FFAppState().queryTree2(
                                                    requestFn: () =>
                                                        queryTreeRecord(
                                                      queryBuilder:
                                                          (treeRecord) =>
                                                              treeRecord.orderBy(
                                                                  'Ativo',
                                                                  descending:
                                                                      true),
                                                      limit: 30,
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<TreeRecord>
                                                        gridViewTreeRecordList =
                                                        snapshot.data!;
                                                    return GridView.builder(
                                                      padding: EdgeInsets.zero,
                                                      gridDelegate:
                                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 6,
                                                        crossAxisSpacing: 10.0,
                                                        mainAxisSpacing: 10.0,
                                                        childAspectRatio: 1.0,
                                                      ),
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          gridViewTreeRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          gridViewIndex) {
                                                        final gridViewTreeRecord =
                                                            gridViewTreeRecordList[
                                                                gridViewIndex];
                                                        return Visibility(
                                                          visible:
                                                              gridViewTreeRecord
                                                                      .ativo !=
                                                                  0,
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {
                                                                FFAppState()
                                                                        .SettingsPatch =
                                                                    gridViewTreeRecord
                                                                        .imagem;
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                        .Nivel =
                                                                    gridViewTreeRecord
                                                                        .ordem;
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                    .VarTree = [];
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                    .addToVarTree(
                                                                        TreeStruct(
                                                                  tree1:
                                                                      gridViewTreeRecord
                                                                          .root,
                                                                  tree2:
                                                                      gridViewTreeRecord
                                                                          .tree,
                                                                  tree3:
                                                                      gridViewTreeRecord
                                                                          .tree1,
                                                                  tree4:
                                                                      gridViewTreeRecord
                                                                          .tree2,
                                                                  tree5:
                                                                      gridViewTreeRecord
                                                                          .tree3,
                                                                  ordem:
                                                                      gridViewTreeRecord
                                                                          .ordem,
                                                                  descricao:
                                                                      gridViewTreeRecord
                                                                          .descricao,
                                                                  atalho:
                                                                      gridViewTreeRecord
                                                                          .atalho,
                                                                  imagem:
                                                                      gridViewTreeRecord
                                                                          .imagem,
                                                                  nivel:
                                                                      gridViewTreeRecord
                                                                          .nivel,
                                                                ));
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                    .updateVarNotesStruct(
                                                                  (e) => e
                                                                    ..tree1 =
                                                                        gridViewTreeRecord
                                                                            .root
                                                                    ..tree2 =
                                                                        gridViewTreeRecord
                                                                            .tree
                                                                    ..tree3 =
                                                                        gridViewTreeRecord
                                                                            .tree1
                                                                    ..tree4 =
                                                                        gridViewTreeRecord
                                                                            .tree2
                                                                    ..tree5 =
                                                                        gridViewTreeRecord
                                                                            .tree3
                                                                    ..ordem =
                                                                        gridViewTreeRecord
                                                                            .ordem
                                                                    ..atalho =
                                                                        gridViewTreeRecord
                                                                            .atalho
                                                                    ..imagem =
                                                                        gridViewTreeRecord
                                                                            .imagem
                                                                    ..nivel =
                                                                        gridViewTreeRecord
                                                                            .nivel
                                                                    ..grupo =
                                                                        gridViewTreeRecord
                                                                            .descricao
                                                                    ..idTree =
                                                                        gridViewTreeRecord
                                                                            .reference,
                                                                );
                                                              });
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                              child:
                                                                  Image.network(
                                                                gridViewTreeRecord
                                                                    .imagem,
                                                                width: 40.0,
                                                                height: 40.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (FFAppState().FlagPesquisa == 'OK')
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Builder(
                                        builder: (context) {
                                          final pesquisalv = _model
                                              .simpleSearchResults
                                              .toList();
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount: pesquisalv.length,
                                            itemBuilder:
                                                (context, pesquisalvIndex) {
                                              final pesquisalvItem =
                                                  pesquisalv[pesquisalvIndex];
                                              return Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Visibility(
                                                  visible:
                                                      pesquisalvItem.nivel !=
                                                          '9',
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .filtroNotes =
                                                                      pesquisalvItem
                                                                          .ordem;
                                                                });
                                                                setState(() {
                                                                  FFAppState()
                                                                          .flagFiltroNotes =
                                                                      true;
                                                                });
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30.0),
                                                                child: Image
                                                                    .network(
                                                                  pesquisalvItem
                                                                      .imagem,
                                                                  width: 40.0,
                                                                  height: 40.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.68,
                                                            height: 44.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  colorFromCssString(
                                                                pesquisalvItem
                                                                    .corCodigo,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .idNotes =
                                                                        pesquisalvItem
                                                                            .reference;
                                                                  });
                                                                  setState(() {
                                                                    _model.tfEntryController
                                                                            ?.text =
                                                                        pesquisalvItem
                                                                            .descricao;
                                                                  });
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .SettingsPatch =
                                                                        pesquisalvItem
                                                                            .imagem;
                                                                  });
                                                                  setState(() {
                                                                    FFAppState()
                                                                        .updateVarNotesStruct(
                                                                      (e) => e
                                                                        ..tree1 =
                                                                            pesquisalvItem.tree1
                                                                        ..tree2 =
                                                                            pesquisalvItem.tree2
                                                                        ..tree3 =
                                                                            pesquisalvItem.tree3
                                                                        ..tree4 =
                                                                            pesquisalvItem.tree4
                                                                        ..tree5 =
                                                                            pesquisalvItem.tree5
                                                                        ..ordem =
                                                                            pesquisalvItem.ordem
                                                                        ..atalho =
                                                                            pesquisalvItem.atalho
                                                                        ..nivel =
                                                                            pesquisalvItem.nivel
                                                                        ..imagem =
                                                                            pesquisalvItem.imagem
                                                                        ..grupo =
                                                                            pesquisalvItem.grupo
                                                                        ..idTree =
                                                                            pesquisalvItem.idTree,
                                                                    );
                                                                  });
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .EntryFlag =
                                                                        'Edit';
                                                                  });
                                                                },
                                                                onLongPress:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'Edit_Old',
                                                                    queryParameters:
                                                                        {
                                                                      'notesPar':
                                                                          serializeParam(
                                                                        pesquisalvItem,
                                                                        ParamType
                                                                            .Document,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      'notesPar':
                                                                          pesquisalvItem,
                                                                    },
                                                                  );
                                                                },
                                                                child: Text(
                                                                  pesquisalvItem
                                                                      .descricao,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color:
                                                                            colorFromCssString(
                                                                          pesquisalvItem
                                                                              .corCodigoFont,
                                                                          defaultColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .idNotes =
                                                                  pesquisalvItem
                                                                      .reference;
                                                            });
                                                            setState(() {
                                                              FFAppState()
                                                                  .updateVarNotesStruct(
                                                                (e) => e
                                                                  ..date =
                                                                      pesquisalvItem
                                                                          .date,
                                                              );
                                                            });

                                                            context.pushNamed(
                                                              'Notas_old',
                                                              queryParameters: {
                                                                'notesPar':
                                                                    serializeParam(
                                                                  pesquisalvItem,
                                                                  ParamType
                                                                      .Document,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'notesPar':
                                                                    pesquisalvItem,
                                                              },
                                                            );
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                            child:
                                                                Image.network(
                                                              pesquisalvItem
                                                                  .notaImagem,
                                                              width: 40.0,
                                                              height: 40.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
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
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100.0,
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
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState().FlagPesquisa ==
                                                  'OK') {
                                                setState(() {
                                                  FFAppState().FlagPesquisa =
                                                      '';
                                                });
                                                setState(() {
                                                  _model.tfEntryController
                                                      ?.clear();
                                                });
                                              } else {
                                                if (FFAppState().Settings) {
                                                  setState(() {
                                                    FFAppState().Settings =
                                                        false;
                                                  });
                                                  setState(() {
                                                    FFAppState().SettingsPatch =
                                                        'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Tree.jpg?alt=media&token=43c91f06-8ba6-43ee-b41b-824e21062aea';
                                                  });
                                                  setState(() {
                                                    FFAppState().VarNotes =
                                                        NotesStruct();
                                                  });
                                                  setState(() {
                                                    FFAppState().EntryFlag =
                                                        'New';
                                                  });
                                                  setState(() {
                                                    _model.tfEntryController
                                                        ?.clear();
                                                  });
                                                } else {
                                                  setState(() {
                                                    FFAppState().Settings =
                                                        true;
                                                  });
                                                }

                                                setState(() {
                                                  FFAppState().filtroNotes =
                                                      '-1';
                                                });
                                                setState(() {
                                                  FFAppState().FlagPesquisa =
                                                      '';
                                                });
                                              }
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              child: Image.network(
                                                FFAppState().SettingsPatch,
                                                width: 40.0,
                                                height: 40.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation1']!),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.tfEntryController,
                                                focusNode:
                                                    _model.tfEntryFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.tfEntryController',
                                                  const Duration(milliseconds: 2000),
                                                  () async {
                                                    if (FFAppState()
                                                            .FlagPesquisa ==
                                                        'OK') {
                                                      safeSetState(() {
                                                        _model.simpleSearchResults =
                                                            TextSearch(
                                                          homeNotesRecordList
                                                              .map(
                                                                (record) =>
                                                                    TextSearchItem
                                                                        .fromTerms(
                                                                            record,
                                                                            [
                                                                      record
                                                                          .descricao]),
                                                              )
                                                              .toList(),
                                                        )
                                                                .search(_model
                                                                    .tfEntryController
                                                                    .text)
                                                                .map((r) =>
                                                                    r.object)
                                                                .toList();
                                                      });
                                                    }
                                                  },
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Digie aqui...',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: FFAppState()
                                                              .FlagPesquisa ==
                                                          'OK'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .warning
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .tfEntryControllerValidator
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().FlagPesquisa == 'OK') {
                                      } else {
                                        if (FFAppState().EntryFlag == 'New') {
                                          setState(() {
                                            _model.dataAtual =
                                                getCurrentTimestamp;
                                          });
                                          if (FFAppState().WeekManual != true) {
                                            _model.weekNumberOutput =
                                                await actions.weekNumber(
                                              _model.dataAtual!,
                                            );
                                            setState(() {
                                              FFAppState().Week =
                                                  _model.weekNumberOutput!;
                                            });
                                          }

                                          await NotesRecord.collection
                                              .doc()
                                              .set(createNotesRecordData(
                                                date: _model.dataAtual,
                                                week: FFAppState().Week,
                                                tree1:
                                                    FFAppState().VarNotes.tree1,
                                                tree2:
                                                    FFAppState().VarNotes.tree2,
                                                tree3:
                                                    FFAppState().VarNotes.tree3,
                                                tree4:
                                                    FFAppState().VarNotes.tree4,
                                                tree5:
                                                    FFAppState().VarNotes.tree5,
                                                ordem:
                                                    FFAppState().VarNotes.ordem,
                                                descricao: _model
                                                    .tfEntryController.text,
                                                atalho: FFAppState()
                                                    .VarNotes
                                                    .atalho,
                                                imagem: FFAppState()
                                                    .VarNotes
                                                    .imagem,
                                                nivel:
                                                    FFAppState().VarNotes.nivel,
                                                notaImagem: FFAppState().Plus,
                                                usuario: currentUserReference,
                                                idTree: FFAppState()
                                                    .VarNotes
                                                    .idTree,
                                                grupo:
                                                    FFAppState().VarNotes.grupo,
                                                corCodigo: '#FFFFFF',
                                                corCodigoFont: '#14181B',
                                              ));
                                        } else {
                                          await FFAppState()
                                              .idNotes!
                                              .update(createNotesRecordData(
                                                tree1:
                                                    FFAppState().VarNotes.tree1,
                                                tree2:
                                                    FFAppState().VarNotes.tree2,
                                                tree3:
                                                    FFAppState().VarNotes.tree3,
                                                tree4:
                                                    FFAppState().VarNotes.tree4,
                                                tree5:
                                                    FFAppState().VarNotes.tree5,
                                                ordem:
                                                    FFAppState().VarNotes.ordem,
                                                descricao: _model
                                                    .tfEntryController.text,
                                                atalho: FFAppState()
                                                    .VarNotes
                                                    .atalho,
                                                imagem:
                                                    FFAppState().SettingsPatch,
                                                nivel:
                                                    FFAppState().VarNotes.nivel,
                                                idTree: FFAppState()
                                                    .VarNotes
                                                    .idTree,
                                                grupo:
                                                    FFAppState().VarNotes.grupo,
                                              ));
                                        }

                                        setState(() {
                                          FFAppState().VarTree = [];
                                        });
                                        setState(() {
                                          FFAppState().Nivel = '-1';
                                        });
                                        setState(() {
                                          FFAppState().Settings = false;
                                        });
                                        setState(() {
                                          FFAppState().SettingsPatch =
                                              'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Tree.jpg?alt=media&token=43c91f06-8ba6-43ee-b41b-824e21062aea';
                                        });
                                        setState(() {
                                          FFAppState().VarNotes = NotesStruct();
                                        });
                                        setState(() {
                                          FFAppState().EntryFlag = 'New';
                                        });
                                        setState(() {
                                          _model.tfEntryController?.clear();
                                        });
                                      }

                                      setState(() {});
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
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation2']!),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
