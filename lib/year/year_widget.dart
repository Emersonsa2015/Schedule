import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/life/edit/obs_edit/obs_edit_widget.dart';
import '/life/edit/year_edit/year_edit_widget.dart';
import '/life/edit/year_edit12/year_edit12_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'year_model.dart';
export 'year_model.dart';

class YearWidget extends StatefulWidget {
  const YearWidget({super.key});

  @override
  State<YearWidget> createState() => _YearWidgetState();
}

class _YearWidgetState extends State<YearWidget> with TickerProviderStateMixin {
  late YearModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YearModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().updateYearTipoRAtIndex(
          1,
          (_) => FFAppState().yearTipoR[1],
        );
        FFAppState().updateYearDescricaoRAtIndex(
          1,
          (_) => FFAppState().yearDescricaoR[1],
        );
        FFAppState().updateYearWeekRAtIndex(
          1,
          (_) => FFAppState().yearWeekR[1],
        );
      });
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        appBar: AppBar(
          backgroundColor: const Color(0xFFC6FB99),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Container(
                    width: 200.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                FFAppState().AnoMemo =
                                    FFAppState().AnoMemo + -1;
                              });
                              _model.anoMemoMinus = await actions.anoMemo(
                                FFAppState().AnoMemo,
                              );
                              await action_blocks.yearGrupo5(context);
                              setState(() {});
                              if (FFAppState().internetCheck == '') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'ANO ALTERDO ${FFAppState().AnoMemo.toString()}',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 1000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            text: '',
                            icon: const FaIcon(
                              FontAwesomeIcons.minusCircle,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFC6FB99),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Container(
                          width: 68.0,
                          decoration: const BoxDecoration(),
                          child: Text(
                            FFAppState().AnoMemo.toString(),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              setState(() {
                                FFAppState().AnoMemo = FFAppState().AnoMemo + 1;
                              });
                              _model.anoMemoPlus = await actions.anoMemo(
                                FFAppState().AnoMemo,
                              );
                              await action_blocks.yearGrupo5(context);
                              setState(() {});
                              if (FFAppState().internetCheck == '') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'ANO ALTERDO ${FFAppState().AnoMemo.toString()}',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 1000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              setState(() {});
                            },
                            text: '',
                            icon: const FaIcon(
                              FontAwesomeIcons.plusCircle,
                              size: 30.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 4.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFFC6FB99),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          decoration: const BoxDecoration(),
                          child: Text(
                            '00:00',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (FFAppState().Vazio != '')
                  Container(
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            ' Detalhes ok',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 20.0, 0.0, 0.0),
                            child: Switch.adaptive(
                              value: _model.switchValue ??= true,
                              onChanged: (newValue) async {
                                setState(() => _model.switchValue = newValue);
                              },
                              activeColor: FlutterFlowTheme.of(context).success,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).accent1,
                              inactiveTrackColor:
                                  FlutterFlowTheme.of(context).alternate,
                              inactiveThumbColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 16.0, 8.0, 12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 35.0,
                                                  height: 20.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Visibility(
                                                    visible: FFAppState()
                                                            .grupoMemo ==
                                                        '1',
                                                    child: Text(
                                                      formatNumber(
                                                        FFAppState()
                                                            .yearMedia[1],
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '0.0',
                                                        locale: '',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
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
                                                      FFAppState().grupoMemo =
                                                          '1';
                                                    });
                                                    await action_blocks
                                                        .yearGrupos(context);
                                                    setState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: const Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: const Duration(
                                                          milliseconds: 500),
                                                      imageUrl:
                                                          'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/ok5.jpg?alt=media&token=c2b62a15-d27c-4a6f-af4d-ed19f0de7116&_gl=1*mh03wq*_ga*MTExOTAzMDE2My4xNjkyOTgxOTcx*_ga_CW55HF8NVT*MTY5NjQzNDM1OC43Mi4xLjE2OTY0MzY2ODEuNDAuMC4w',
                                                      width: 44.0,
                                                      height: 44.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 35.0,
                                                  height: 20.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Visibility(
                                                    visible: FFAppState()
                                                            .grupoMemo ==
                                                        '2',
                                                    child: Text(
                                                      formatNumber(
                                                        FFAppState()
                                                            .yearMedia[2],
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '0.0',
                                                        locale: '',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
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
                                                      FFAppState().grupoMemo =
                                                          '2';
                                                    });
                                                    await action_blocks
                                                        .yearGrupos(context);
                                                    setState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: const Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: const Duration(
                                                          milliseconds: 500),
                                                      imageUrl:
                                                          'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Casa.jpg?alt=media&token=5105efa3-964c-443f-b11e-ebb1a5d926b1&_gl=1*1hhyga2*_ga*MTExOTAzMDE2My4xNjkyOTgxOTcx*_ga_CW55HF8NVT*MTY5NjQzNDM1OC43Mi4xLjE2OTY0Mzg4ODUuNjAuMC4w',
                                                      width: 44.0,
                                                      height: 44.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 35.0,
                                                  height: 20.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Visibility(
                                                    visible: FFAppState()
                                                            .grupoMemo ==
                                                        '3',
                                                    child: Text(
                                                      formatNumber(
                                                        FFAppState()
                                                            .yearMedia[3],
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '0.0',
                                                        locale: '',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
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
                                                      FFAppState().grupoMemo =
                                                          '3';
                                                    });
                                                    await action_blocks
                                                        .yearGrupos(context);
                                                    setState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: const Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: const Duration(
                                                          milliseconds: 500),
                                                      imageUrl:
                                                          'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Friends.jpg?alt=media&token=bab5b57e-215d-4b68-8520-9f03c6e0ef73&_gl=1*833yud*_ga*MTExOTAzMDE2My4xNjkyOTgxOTcx*_ga_CW55HF8NVT*MTY5NjQzNDM1OC43Mi4xLjE2OTY0Mzg5NzIuNDYuMC4w',
                                                      width: 44.0,
                                                      height: 44.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 35.0,
                                                  height: 20.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Visibility(
                                                    visible: FFAppState()
                                                            .grupoMemo ==
                                                        '4',
                                                    child: Text(
                                                      formatNumber(
                                                        FFAppState()
                                                            .yearMedia[4],
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '0.0',
                                                        locale: '',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
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
                                                      FFAppState().grupoMemo =
                                                          '4';
                                                    });
                                                    await action_blocks
                                                        .yearGrupos(context);
                                                    setState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: const Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: const Duration(
                                                          milliseconds: 500),
                                                      imageUrl:
                                                          'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/Mind.jpg?alt=media&token=babf4fa7-1e29-4f39-a238-32e6e141f771&_gl=1*tfozen*_ga*MTExOTAzMDE2My4xNjkyOTgxOTcx*_ga_CW55HF8NVT*MTY5NjQzNDM1OC43Mi4xLjE2OTY0Mzg1ODIuNjAuMC4w',
                                                      width: 44.0,
                                                      height: 44.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 35.0,
                                                  height: 20.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Visibility(
                                                    visible: FFAppState()
                                                            .grupoMemo ==
                                                        '5',
                                                    child: Text(
                                                      formatNumber(
                                                        FFAppState()
                                                            .yearMedia[5],
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '0.0',
                                                        locale: '',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
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
                                                      FFAppState().grupoMemo =
                                                          '5';
                                                    });
                                                    await action_blocks
                                                        .yearGrupo5(context);
                                                    setState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: const Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: const Duration(
                                                          milliseconds: 500),
                                                      imageUrl:
                                                          'https://firebasestorage.googleapis.com/v0/b/schedule-da0ad.appspot.com/o/okTrofy.jpg?alt=media&token=08d8bfbd-e66a-4d65-99b0-6d6519930874&_gl=1*9c6tdq*_ga*MTExOTAzMDE2My4xNjkyOTgxOTcx*_ga_CW55HF8NVT*MTY5NjQzNDM1OC43Mi4xLjE2OTY0Mzg2NDMuNjAuMC4w',
                                                      width: 44.0,
                                                      height: 44.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: const BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final yearListView = FFAppState()
                                                .yearDescricaoR
                                                .toList();
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              reverse: true,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: yearListView.length,
                                              itemBuilder:
                                                  (context, yearListViewIndex) {
                                                final yearListViewItem =
                                                    yearListView[
                                                        yearListViewIndex];
                                                return Stack(
                                                  children: [
                                                    if (FFAppState().yearTipoR[
                                                            yearListViewIndex] ==
                                                        'M')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .solidEdit,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    size: 20.0,
                                                                  ),
                                                                  onPressed:
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
                                                                                child: ObsEditWidget(
                                                                                  mes0Par: FFAppState().yearDescricaoR[yearListViewIndex],
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
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFAppState()
                                                                            .yearDescricaoR[
                                                                        yearListViewIndex],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Kalam',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).success,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle:
                                                                              FontStyle.italic,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    if ((FFAppState().yearTipoR[
                                                                yearListViewIndex] ==
                                                            'D') &&
                                                        (FFAppState()
                                                                    .Vazio !=
                                                                ''))
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
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
                                                                                height: MediaQuery.sizeOf(context).height * 0.3,
                                                                                child: const YearEdit12Widget(),
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
                                                                    FFAppState()
                                                                            .yearDescricaoR[
                                                                        yearListViewIndex],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle:
                                                                              FontStyle.italic,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    if (FFAppState().yearTipoR[
                                                            yearListViewIndex] ==
                                                        'W')
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    4.0,
                                                                    8.0,
                                                                    4.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .accent2,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30.0),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    fadeOutDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    imageUrl: FFAppState()
                                                                            .yearImagemR[
                                                                        yearListViewIndex],
                                                                    width: 30.0,
                                                                    height:
                                                                        30.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.8,
                                                                  height: 34.0,
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
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFAppState()
                                                                              .yearWeekR[yearListViewIndex]
                                                                              .toString(),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                      Flexible(
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
                                                                              setState(() {
                                                                                FFAppState().chartNumeroLv = FFAppState().chartNumero[yearListViewIndex];
                                                                                FFAppState().chartIdLv = FFAppState().chartId[yearListViewIndex];
                                                                                FFAppState().chartIndexLv = yearListViewIndex;
                                                                              });
                                                                              _model.notesYearD = await queryNotesRecordOnce(
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
                                                                                      isEqualTo: FFAppState().chartNumeroLv,
                                                                                    )
                                                                                    .where(
                                                                                      'Tree1',
                                                                                      isEqualTo: FFAppState().grupoMemo,
                                                                                    )
                                                                                    .orderBy('Date'),
                                                                              );
                                                                              _model.yearG5DetalheOutput = await actions.yearG5Detalhe(
                                                                                FFAppState().chartNumeroLv,
                                                                                FFAppState().grupoMemo,
                                                                                _model.notesYearD?.toList(),
                                                                              );
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                barrierColor: FlutterFlowTheme.of(context).accent2,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return WebViewAware(
                                                                                    child: GestureDetector(
                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: SizedBox(
                                                                                          height: MediaQuery.sizeOf(context).height * 0.6,
                                                                                          child: YearEditWidget(
                                                                                            chartNumeroLV: FFAppState().chartNumeroLv,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));

                                                                              setState(() {});
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              FFAppState().yearDescricaoR[yearListViewIndex],
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
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
                                                      ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.55,
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
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      final yearFeedback =
                                          FFAppState().feedbackTree.toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount: yearFeedback.length,
                                        itemBuilder:
                                            (context, yearFeedbackIndex) {
                                          final yearFeedbackItem =
                                              yearFeedback[yearFeedbackIndex];
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                yearFeedbackIndex.toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Text(
                                                '   ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Text(
                                                FFAppState().feedbackTree[
                                                    yearFeedbackIndex],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
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
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle: FlutterFlowTheme.of(context).titleMedium,
                          unselectedLabelStyle: const TextStyle(),
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                          unselectedBackgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderColor: FlutterFlowTheme.of(context).success,
                          unselectedBorderColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          elevation: 0.0,
                          buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          padding: const EdgeInsets.all(4.0),
                          tabs: const [
                            Tab(
                              text: 'Year',
                            ),
                            Tab(
                              text: 'Feedback',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}][i]();
                          },
                        ),
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
