import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home0_model.dart';
export 'home0_model.dart';

class Home0Widget extends StatefulWidget {
  const Home0Widget({super.key});

  @override
  State<Home0Widget> createState() => _Home0WidgetState();
}

class _Home0WidgetState extends State<Home0Widget>
    with TickerProviderStateMixin {
  late Home0Model _model;

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
    _model = createModel(context, () => Home0Model());

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
        FFAppState().updateNotesDescricaoAtIndex(
          1,
          (_) => FFAppState().notesDescricao[1],
        );
        FFAppState().updateNotesOrdemAtIndex(
          1,
          (_) => FFAppState().notesOrdem[1],
        );
        FFAppState().updateNotesImagem64AtIndex(
          1,
          (_) => FFAppState().notesImagem64[1],
        );
        FFAppState().updateNotesListAtIndex(
          1,
          (_) => FFAppState().notesList[1],
        );
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
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 1000),
        callback: (timer) async {
          _model.internetCheckOutput = await actions.internetCheck();
          if (_model.internetCheckOutput == true) {
            setState(() {
              FFAppState().internetCheck = '';
            });
          } else {
            setState(() {
              FFAppState().internetCheck = 'Sem Internet...';
            });
          }
        },
        startImmediately: true,
      );
    });

    _model.tfEntryController ??= TextEditingController();
    _model.tfEntryFocusNode ??= FocusNode();

    _model.tfSearchController ??= TextEditingController(text: 'Digite aqui...');
    _model.tfSearchFocusNode ??= FocusNode();

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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Emerson Sá',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                              fontSize: 16.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 8.0, 0.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
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
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
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
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
                                Navigator.pop(context);
                              }

                              context.pushNamed(
                                'Chart',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.scale,
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
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
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
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
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
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                  scaffoldKey.currentState!.isEndDrawerOpen) {
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
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: const Color(0xFFC6FB99),
            iconTheme:
                IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
            automaticallyImplyLeading: true,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Life',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Kalam',
                                    fontSize: 24.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 8.0, 0.0),
                          child: Text(
                            '08:25',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 190.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  if (!FFAppState().searchFlag)
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFAppState().internetCheck,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().searchFlag)
                                    Container(
                                      width: 190.0,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 16.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.tfSearchController,
                                          focusNode: _model.tfSearchFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.tfSearchController',
                                            const Duration(milliseconds: 2000),
                                            () async {
                                              _model.searchListOutput =
                                                  await actions.seachList(
                                                _model.tfSearchController.text,
                                              );
                                              setState(() {
                                                FFAppState()
                                                    .updateSearchIndexAtIndex(
                                                  1,
                                                  (_) => FFAppState()
                                                      .searchIndex[1],
                                                );
                                              });

                                              setState(() {});
                                            },
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          validator: _model
                                              .tfSearchControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 8.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: FaIcon(
                              FontAwesomeIcons.search,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              if (FFAppState().searchFlag == true) {
                                setState(() {
                                  FFAppState().searchFlag = false;
                                });
                              } else {
                                setState(() {
                                  FFAppState().searchFlag = true;
                                });
                              }

                              setState(() {
                                _model.tfSearchController?.text =
                                    FFAppState().Vazio;
                              });
                              _model.searchListOutput1 =
                                  await actions.seachList(
                                _model.tfSearchController.text,
                              );
                              setState(() {
                                FFAppState().updateSearchIndexAtIndex(
                                  1,
                                  (_) => FFAppState().searchIndex[1],
                                );
                              });

                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
              titlePadding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Builder(
                        builder: (context) {
                          final searchLV = FFAppState().searchIndex.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            reverse: true,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: searchLV.length,
                            itemBuilder: (context, searchLVIndex) {
                              final searchLVItem = searchLV[searchLVIndex];
                              return Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {},
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                child: Image.network(
                                                  functions.converterBase64PNG(
                                                      FFAppState().treeImage64[
                                                          FFAppState()
                                                                  .notesList[
                                                              searchLVItem]])!,
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().Vazio != '')
                                            Text(
                                              searchLVIndex.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          if (FFAppState().Vazio != '')
                                            Text(
                                              searchLVItem.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          Container(
                                            width: 250.0,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.4,
                                            decoration: const BoxDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.tfEntryController
                                                            ?.text =
                                                        FFAppState()
                                                            .treeImage64[41];
                                                  });
                                                },
                                                onLongPress: () async {},
                                                child: Text(
                                                  FFAppState().notesDescricao[
                                                      searchLVItem],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                unawaited(
                                                  () async {}(),
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                child: Image.network(
                                                  FFAppState().Plus,
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().Vazio != '')
                                            Container(
                                              width: 10.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .notesList[
                                                              searchLVItem]
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .notesOrdem[
                                                              searchLVItem]
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
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
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
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
                                      scrollDirection: Axis.vertical,
                                      itemCount: cabec.length,
                                      itemBuilder: (context, cabecIndex) {
                                        final cabecItem = cabec[cabecIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFBAF987),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().Nivel =
                                                      cabecItem.ordem;
                                                });
                                                setState(() {
                                                  FFAppState().CabecCount =
                                                      FFAppState()
                                                          .VarTree
                                                          .length;
                                                });
                                                setState(() {
                                                  FFAppState().CabecCount =
                                                      FFAppState().CabecCount +
                                                          -1;
                                                });
                                                setState(() {
                                                  FFAppState().CabecIndex =
                                                      cabecIndex;
                                                });
                                                while (FFAppState().CabecCount >
                                                    FFAppState().CabecIndex) {
                                                  setState(() {
                                                    FFAppState()
                                                        .removeAtIndexFromVarTree(
                                                            FFAppState()
                                                                .CabecCount);
                                                  });
                                                  setState(() {
                                                    FFAppState().CabecCount =
                                                        FFAppState()
                                                                .CabecCount +
                                                            -1;
                                                  });
                                                }
                                                if (FFAppState().CabecCount ==
                                                    0) {}
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                      child: Image.network(
                                                        cabecItem.imagem,
                                                        width: 40.0,
                                                        height: 40.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      cabecItem.descricao,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: StreamBuilder<List<TreeRecord>>(
                                    stream: FFAppState().queryTree(
                                      requestFn: () => queryTreeRecord(
                                        queryBuilder: (treeRecord) =>
                                            treeRecord.orderBy('Ordem'),
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
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<TreeRecord> lvTreeTreeRecordList =
                                          snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount: lvTreeTreeRecordList.length,
                                        itemBuilder: (context, lvTreeIndex) {
                                          final lvTreeTreeRecord =
                                              lvTreeTreeRecordList[lvTreeIndex];
                                          return Visibility(
                                            visible: lvTreeTreeRecord.nivel ==
                                                FFAppState().Nivel,
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
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
                                                      FFAppState().Nivel =
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
                                                      FFAppState().addToVarTree(
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
                                                              lvTreeTreeRecord
                                                                  .root
                                                          ..tree2 =
                                                              lvTreeTreeRecord
                                                                  .tree
                                                          ..tree3 =
                                                              lvTreeTreeRecord
                                                                  .tree1
                                                          ..tree4 =
                                                              lvTreeTreeRecord
                                                                  .tree2
                                                          ..tree5 =
                                                              lvTreeTreeRecord
                                                                  .tree3
                                                          ..ordem =
                                                              lvTreeTreeRecord
                                                                  .ordem
                                                          ..atalho =
                                                              lvTreeTreeRecord
                                                                  .atalho
                                                          ..imagem =
                                                              lvTreeTreeRecord
                                                                  .imagem
                                                          ..nivel =
                                                              lvTreeTreeRecord
                                                                  .nivel
                                                          ..grupo =
                                                              lvTreeTreeRecord
                                                                  .descricao
                                                          ..idTree =
                                                              lvTreeTreeRecord
                                                                  .reference,
                                                      );
                                                    });
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                          child: Image.network(
                                                            lvTreeTreeRecord
                                                                .imagem,
                                                            width: 40.0,
                                                            height: 40.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          lvTreeTreeRecord
                                                              .descricao,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 16.0, 4.0, 4.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 190.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: StreamBuilder<List<TreeRecord>>(
                                    stream: FFAppState().queryTree2(
                                      requestFn: () => queryTreeRecord(
                                        queryBuilder: (treeRecord) => treeRecord
                                            .orderBy('Ativo', descending: true),
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
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<TreeRecord> gridViewTreeRecordList =
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
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            gridViewTreeRecordList.length,
                                        itemBuilder: (context, gridViewIndex) {
                                          final gridViewTreeRecord =
                                              gridViewTreeRecordList[
                                                  gridViewIndex];
                                          return Visibility(
                                            visible:
                                                gridViewTreeRecord.ativo != 0,
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().SettingsPatch =
                                                      gridViewTreeRecord.imagem;
                                                });
                                                setState(() {
                                                  FFAppState().Nivel =
                                                      gridViewTreeRecord.ordem;
                                                });
                                                setState(() {
                                                  FFAppState().VarTree = [];
                                                });
                                                setState(() {
                                                  FFAppState()
                                                      .addToVarTree(TreeStruct(
                                                    tree1:
                                                        gridViewTreeRecord.root,
                                                    tree2:
                                                        gridViewTreeRecord.tree,
                                                    tree3: gridViewTreeRecord
                                                        .tree1,
                                                    tree4: gridViewTreeRecord
                                                        .tree2,
                                                    tree5: gridViewTreeRecord
                                                        .tree3,
                                                    ordem: gridViewTreeRecord
                                                        .ordem,
                                                    descricao:
                                                        gridViewTreeRecord
                                                            .descricao,
                                                    atalho: gridViewTreeRecord
                                                        .atalho,
                                                    imagem: gridViewTreeRecord
                                                        .imagem,
                                                    nivel: gridViewTreeRecord
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
                                                    BorderRadius.circular(30.0),
                                                child: Image.network(
                                                  gridViewTreeRecord.imagem,
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                                    if (FFAppState().FlagPesquisa == 'OK') {
                                      setState(() {
                                        FFAppState().FlagPesquisa = '';
                                      });
                                      setState(() {
                                        _model.tfEntryController?.clear();
                                      });
                                    } else {
                                      if (FFAppState().Settings) {
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
                                      } else {
                                        setState(() {
                                          FFAppState().Settings = true;
                                        });
                                      }

                                      setState(() {
                                        FFAppState().filtroNotes = '-1';
                                      });
                                      setState(() {
                                        FFAppState().FlagPesquisa = '';
                                      });
                                    }
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          const Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          const Duration(milliseconds: 500),
                                      imageUrl: FFAppState().SettingsPatch,
                                      width: 40.0,
                                      height: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'imageOnPageLoadAnimation1']!),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.tfEntryController,
                                      focusNode: _model.tfEntryFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.tfEntryController',
                                        const Duration(milliseconds: 2000),
                                        () async {
                                          if (FFAppState().FlagPesquisa ==
                                              'OK') {}
                                        },
                                      ),
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FFAppState().FlagPesquisa == 'OK'
                                                ? FlutterFlowTheme.of(context)
                                                    .warning
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (FFAppState().FlagPesquisa == 'OK') {
                            } else {
                              if (FFAppState().EntryFlag == 'New') {
                                if (FFAppState().WeekManual != true) {}
                              } else {
                                await FFAppState()
                                    .idNotes!
                                    .update(createNotesRecordData(
                                      tree1: FFAppState().VarNotes.tree1,
                                      tree2: FFAppState().VarNotes.tree2,
                                      tree3: FFAppState().VarNotes.tree3,
                                      tree4: FFAppState().VarNotes.tree4,
                                      tree5: FFAppState().VarNotes.tree5,
                                      ordem: FFAppState().VarNotes.ordem,
                                      descricao: _model.tfEntryController.text,
                                      atalho: FFAppState().VarNotes.atalho,
                                      imagem: FFAppState().SettingsPatch,
                                      nivel: FFAppState().VarNotes.nivel,
                                      idTree: FFAppState().VarNotes.idTree,
                                      grupo: FFAppState().VarNotes.grupo,
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
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset(
                              'assets/images/Tree.jpg',
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
        ),
      ),
    );
  }
}
