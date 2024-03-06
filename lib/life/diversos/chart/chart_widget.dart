import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'chart_model.dart';
export 'chart_model.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with TickerProviderStateMixin {
  late ChartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().flagChat = 'Dia';
      });
      _model.notesChart = await queryNotesRecordOnce(
        queryBuilder: (notesRecord) => notesRecord
            .where(
              'Tree1',
              isEqualTo: FFAppState().VarNotes.tree1,
            )
            .orderBy('Date'),
      );
      setState(() {
        FFAppState().Feedback = [];
      });
      _model.eixoXY = await actions.chart(
        _model.notesChart?.toList(),
        FFAppState().flagChat,
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
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

    return StreamBuilder<List<NotesRecord>>(
      stream: queryNotesRecord(
        queryBuilder: (notesRecord) => notesRecord
            .where(
              'Tree1',
              isEqualTo: FFAppState().VarNotes.tree1,
            )
            .orderBy('Date'),
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
        List<NotesRecord> chartNotesRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: const Color(0xFFAEF573),
              automaticallyImplyLeading: false,
              title: Text(
                'Gráfico',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding: const EdgeInsets.all(4.0),
                        tabs: const [
                          Tab(
                            text: 'Mês',
                          ),
                          Tab(
                            text: 'Semana',
                          ),
                          Tab(
                            text: 'Dia',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: Image.network(
                                          FFAppState().VarNotes.imagem,
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      FFAppState().VarNotes.tree1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 16.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: FFAppState().EixoXMes,
                                          yData: FFAppState().EixoYMes,
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            barWidth: 2.0,
                                            isCurved: true,
                                            dotData: FlDotData(show: false),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                            ),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        showGrid: true,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        borderWidth: 1.0,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(
                                        showLabels: true,
                                        labelInterval: 1.0,
                                      ),
                                      yAxisLabelInfo: const AxisLabelInfo(
                                        title: 'Nota',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        showLabels: true,
                                        labelInterval: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 16.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Builder(
                                              builder: (context) {
                                                final feedbackMes = FFAppState()
                                                    .EixoFeedbackMes
                                                    .toList();
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: feedbackMes.length,
                                                  itemBuilder: (context,
                                                      feedbackMesIndex) {
                                                    final feedbackMesItem =
                                                        feedbackMes[
                                                            feedbackMesIndex];
                                                    return Text(
                                                      feedbackMesItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
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
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: Image.network(
                                          FFAppState().VarNotes.imagem,
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      FFAppState().VarNotes.tree1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 16.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: FFAppState().EixoXSem,
                                          yData: FFAppState().EixoYSem,
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            barWidth: 2.0,
                                            isCurved: true,
                                            dotData: FlDotData(show: false),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                            ),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        showGrid: true,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        borderWidth: 1.0,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(
                                        showLabels: true,
                                        labelInterval: 1.0,
                                      ),
                                      yAxisLabelInfo: const AxisLabelInfo(
                                        title: 'Nota',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        showLabels: true,
                                        labelInterval: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 16.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Builder(
                                              builder: (context) {
                                                final feedbackSem = FFAppState()
                                                    .EixoFeedbackSem
                                                    .toList();
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: feedbackSem.length,
                                                  itemBuilder: (context,
                                                      feedbackSemIndex) {
                                                    final feedbackSemItem =
                                                        feedbackSem[
                                                            feedbackSemIndex];
                                                    return Text(
                                                      feedbackSemItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
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
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: Image.network(
                                          FFAppState().VarNotes.imagem,
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      FFAppState().VarNotes.tree1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 16.0, 0.0),
                                  child: SizedBox(
                                    width: 370.0,
                                    height: 230.0,
                                    child: FlutterFlowLineChart(
                                      data: [
                                        FFLineChartData(
                                          xData: FFAppState().EixoX,
                                          yData: FFAppState().EixoY,
                                          settings: LineChartBarData(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            barWidth: 2.0,
                                            isCurved: true,
                                            dotData: FlDotData(show: false),
                                            belowBarData: BarAreaData(
                                              show: true,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                            ),
                                          ),
                                        )
                                      ],
                                      chartStylingInfo: ChartStylingInfo(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        showGrid: true,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        borderWidth: 1.0,
                                      ),
                                      axisBounds: const AxisBounds(),
                                      xAxisLabelInfo: const AxisLabelInfo(
                                        showLabels: true,
                                        labelInterval: 1.0,
                                      ),
                                      yAxisLabelInfo: const AxisLabelInfo(
                                        title: 'Nota',
                                        titleTextStyle: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                        showLabels: true,
                                        labelInterval: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 16.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Builder(
                                              builder: (context) {
                                                final feedback = FFAppState()
                                                    .EixoFeedback
                                                    .toList();
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: feedback.length,
                                                  itemBuilder:
                                                      (context, feedbackIndex) {
                                                    final feedbackItem =
                                                        feedback[feedbackIndex];
                                                    return Text(
                                                      feedbackItem,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
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
                              ],
                            ),
                          ),
                        ],
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
  }
}
