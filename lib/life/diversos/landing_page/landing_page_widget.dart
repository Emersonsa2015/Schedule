import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'landing_page_model.dart';
export 'landing_page_model.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({super.key});

  @override
  State<LandingPageWidget> createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget>
    with TickerProviderStateMixin {
  late LandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: const Offset(0.5, 0.5),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 20000.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(-1000.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 20000.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(-1000.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 20000.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(-1000.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 20000.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(-1000.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: const Offset(0.5, 0.5),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageModel());

    _model.tfEmailController ??= TextEditingController();
    _model.tfEmailFocusNode ??= FocusNode();

    _model.tfPasswordController ??= TextEditingController();
    _model.tfPasswordFocusNode ??= FocusNode();

    _model.tfEmail2Controller ??= TextEditingController();
    _model.tfEmail2FocusNode ??= FocusNode();

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
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 30.0),
                          child: Stack(
                            children: [
                              ClipRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 50.0,
                                    sigmaY: 50.0,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 549.0,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -0.01, -0.39),
                                          child: Container(
                                            width: 333.0,
                                            height: 333.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFCEFC9F),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.36, 0.52),
                                          child: Container(
                                            width: 164.0,
                                            height: 164.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFCEFC9F),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -0.51, -0.75),
                                          child: Container(
                                            width: 164.0,
                                            height: 164.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFCEFC9F),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.56, 0.05),
                                          child: Container(
                                            width: 265.0,
                                            height: 265.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFCEFC9F),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 107.0,
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.asset(
                                                          'assets/images/Life-Logo.png',
                                                          width: 200.0,
                                                          height: 80.0,
                                                          fit: BoxFit.cover,
                                                          alignment: const Alignment(
                                                              0.0, 0.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          'Benefits',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xFF1C1C1C),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      60.0,
                                                                      0.0,
                                                                      60.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Prices',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: const Color(
                                                                      0xFF1C1C1C),
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Blog',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xFF1C1C1C),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          const SizedBox(
                                                            height: 20.0,
                                                            child:
                                                                VerticalDivider(
                                                              width: 60.0,
                                                              thickness: 1.0,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFFC9FFC9),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          22.0),
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            6.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Contact us',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                const Color(0xFF007900),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  const FaIcon(
                                                                    FontAwesomeIcons
                                                                        .whatsapp,
                                                                    color: Color(
                                                                        0xFF007900),
                                                                    size: 20.0,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        const Color(0x224B39EF),
                                                    icon: Icon(
                                                      Icons.menu_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed('Home');
                                                    },
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          height: 0.0,
                                          thickness: 2.0,
                                          color: Color(0xFFEAEAEA),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'speed up your\ngrowth with our\nWorld Team',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 30.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 35.0;
                                                    } else {
                                                      return 45.0;
                                                    }
                                                  }(),
                                                  fontWeight: FontWeight.bold,
                                                  lineHeight: 1.2,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation1']!),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 30.0, 20.0, 30.0),
                                            child: Text(
                                              'Discover innovative marketing solutions that help your business thrive in today\'s competitive landscape.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF7D7D7D),
                                                    fontSize: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 14.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 16.0;
                                                      } else {
                                                        return 18.0;
                                                      }
                                                    }(),
                                                    fontWeight: FontWeight.w300,
                                                    lineHeight: 1.2,
                                                  ),
                                            ),
                                          ),
                                          Wrap(
                                            spacing: 20.0,
                                            runSpacing: 15.0,
                                            alignment: WrapAlignment.center,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    width: 300.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .tfEmailController,
                                                      focusNode: _model
                                                          .tfEmailFocusNode,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        hintText:
                                                            'Enter your email address...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      32.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      32.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      32.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      32.0),
                                                        ),
                                                        contentPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      validator: _model
                                                          .tfEmailControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                12.0,
                                                                20.0,
                                                                0.0),
                                                    child: SizedBox(
                                                      width: 300.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .tfPasswordController,
                                                        focusNode: _model
                                                            .tfPasswordFocusNode,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium,
                                                          hintText:
                                                              'Enter your password...',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              Colors.white,
                                                          contentPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                        ),
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
                                                        validator: _model
                                                            .tfPasswordControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      setState(() {
                                                        FFAppState().Password =
                                                            _model
                                                                .tfPasswordController
                                                                .text;
                                                      });
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      if (_model
                                                              .tfPasswordController
                                                              .text !=
                                                          FFAppState()
                                                              .Password) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          const SnackBar(
                                                            content: Text(
                                                              'Passwords don\'t match!',
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }

                                                      final user = await authManager
                                                          .createAccountWithEmail(
                                                        context,
                                                        _model.tfEmailController
                                                            .text,
                                                        _model
                                                            .tfPasswordController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await UsersRecord
                                                          .collection
                                                          .doc(user.uid)
                                                          .update(
                                                              createUsersRecordData(
                                                            email: _model
                                                                .tfEmailController
                                                                .text,
                                                          ));

                                                      context.goNamedAuth(
                                                          'Principal',
                                                          context.mounted);
                                                    },
                                                    text: 'New user',
                                                    options: FFButtonOptions(
                                                      width: 150.0,
                                                      height: 48.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32.0),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();

                                                      final user =
                                                          await authManager
                                                              .signInWithEmail(
                                                        context,
                                                        _model.tfEmailController
                                                            .text,
                                                        _model
                                                            .tfPasswordController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      context.goNamedAuth(
                                                          'Principal',
                                                          context.mounted);
                                                    },
                                                    text: 'Log in\n',
                                                    options: FFButtonOptions(
                                                      width: 150.0,
                                                      height: 48.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32.0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: Wrap(
                                              spacing: 0.0,
                                              runSpacing: 0.0,
                                              alignment: WrapAlignment.center,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 20.0, 0.0),
                                                  child: SizedBox(
                                                    width: 200.0,
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
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
                                                            imageUrl:
                                                                'https://segredosdomundo.r7.com/wp-content/uploads/2018/12/8-modelos-plus-size-mais-bonitas-do-mundo-11.jpg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -0.5, 0.0),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
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
                                                              imageUrl:
                                                                  'https://arcosmodels.com/wp-content/uploads/2018/03/1-290x380.jpg',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -0.05, 0.0),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
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
                                                              imageUrl:
                                                                  'https://arcosmodels.com/wp-content/uploads/2017/02/CAPA-PEDRO-SOLTZ-2--290x380.jpg',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.45, 0.0),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
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
                                                              imageUrl:
                                                                  'https://www.otempo.com.br/image/contentid/policy:1.2751424:1669039728/Camada-26-png.png?f=3x2&w=1224',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.95, 0.0),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
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
                                                              imageUrl:
                                                                  'https://www.correiodopovo.com.br/image/policy:1.908961:1666179182/KatTorres.JPG.JPG?a=1%3A1&\$p\$a=062f374',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 30.0,
                                                          20.0, 30.0),
                                                  child: Text(
                                                    'Trusted by over 2,000 people worldwide',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0xFF7D7D7D),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          lineHeight: 1.2,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASsAAACpCAMAAABEdevhAAAAgVBMVEX///85QUkvOEElLzk0PEU2P0cpMzzz9PSNkZUnMTsjLjhGTlUtN0G3urz8/PwxOkIdKTRgZmyEiIzP0dJVW2Hc3d49RU3X2drj5OXt7u9wdXrExshma3FbYWfP0NKbnqGusLOXmp4XJDCxs7aRlZh9gYZCSlGjpqlNVFvHycp3fIAo/sXMAAAIvUlEQVR4nO2afZuCKhOHFQEDNS1fUnuvLd2+/wd8GPB1t7a9rq1T5zlz/5OSIPwcmBnUshAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQRAEQR7JZu5ls2D66m78GzjJkDHqeGlXMl18pj9U+O9yEraG8sIUTCdciuh8fG233pFFZDeQiy5wPQ5nTJYv7tn7cSKtVvbBhYJVWyD2r+7bu3FmnVbOpzW0M1u4r+7cm5H1WomlOp+T8TnSMbV7rSJwfivanfvVq3v3Xri9NMyGgllfwHdXKlTAn2OxNH7W/HY38bMixVh00sgACgZayc2VChn3efTXgZaR5J9/bOM6R8dx2OIpTVunsLUqOYfzqdfNSeZdqwD/+3/UaidVOMee8fg3EYOmn2K04PUY4VxIf2cKnD6EuGZWD9FKxynOM1IDEwGJ4AlNFxljst4Hy2VrtqWegowxcuOGj9BqC9GuKP7WyFXMCsKf4JQ+M0rPo3UjUGZFOMuyepJfr/MIrVybk+gpke5e5xzRQ9fCfLGId2vJqDca9tK3w2ifu9Pba8kjtLLc6uM5sZsbEsbE6oEtBpl0hODKXslwIuQXafPVHR3GWhWL4POLAU7zePPNJqepmua3W87jOB8+nmm+GRfcqLZp7gS3NJcXF6/+uFvx95Sy9XXtxI6r+emS8NAmdxPmoVaLWSiFkN4g3nL3nnQcMcuXdZLUjfG4k7MUXLJLo2Gq/ksgU9/qi/I1V1W8baulO1HP0pHZBzTrrtW1Z/PHWR3OVOHCU9X2eQJX1QsrXztw+dZc9FD3Wsk+Mtdm5a4in4QhLIv87p0GWs0jE4sxnrU+bcG4fg6UnAiljnEPn9zXhSyMzLNJJaXhTB1MuDooifEn3DYOpqDN5dwrYG2jlB5M6wd1eFY9jCOon+lq1A+YjnuY88ipZ3D76JOuoWBadylgG6kHdRQl1zeweq1WfUMsMsPU4Q24UdU2NKe1CqI+jZITrZVagSmMbAJ37oJfdtCt1F1BqFZTFxLWRisIcDyl1cZpbmI63R1MHq3VcqCVfhIfvLczPUnctVTdpU5yzat3Wu1NO9Sok0GRq0986mWmSa1VbjYumFFAJwdjrbQZGtM6q1Y2YPZhSIjqQVnc1spmQjbV2yPy6Bh010tDYXWa9pswLIMp2NlZ6F2Zka1Whe4vd1aeXv34R6t6tFUDDELWalXCDKFRMnOItobvWlGx+libVirTP3pxi8lhDWZ2Uytaf6Zb3Qk40k/u4RsjA61C0GrTR+pMr6Hb7gJ+JQZqtdr7zdisXE8aocYw6O9CNlrlB3jg2rtOdAgafJuDCfy5AE2gAxX8OVMmHeuGbmnFbN0kPIgQjmAviTw6ZtsMlnZwHYM5abQa7NLw21olEHEY11PA0iE2VizbaW2ZRBO0gkfDamOgF1UWnr5oZQZt6dq2k1tL+KX+epv+qJWeE9aSt0eBGgZ5+ILVZ8eH/ItWNXSu19KW34P3Ris9hKiZo/BMlVuAlhr5jEag1YT0LiMFMZMvWnUDhJadjcretVujvkyWP2hFdKoP6atpIHaeodXm0IhlnFIwWNrBhgvnN1oV0AZpyqAJv9IPuZsGx0YrsC9hppPlErN7MdKKt3knKK6s0yo8YTpID9tfaTV/nlZW4EMAE8qProvtlAPHV/R2ZovvlUd21ZRVau3iRzM11u3Iw4FdNeFH0Vwwtqs2zIa81wFVp7va4doxRumrtbKKPYmc0jzsafdygh30E057rZq3YCPa9WpN+7mlZ09sPKowuuhWQCuwr1ZA0BRGNl6vzk120qxXmrxac2PoekPNbC7CFf+4VtYgEwC3w1Q0Q5zM7FcduznJrkzBTquqdWoq7IcRw3zU4YGc5NPiSNqYoQAB/RPcbwf6wcuisR80TrIAZ6EXTOuTQU9AWLgoYa3taWVfoFVLzFUkV5/2+/2ykS9pw+bQuRaudPGVr2dtPSltUEjo6EEvdcTPyCAW1TuvJLvMa5CKwmYrGN0gviLZfDfX4bvYqUZKh2ZBuoCXJORknKfNT8ughDu+UKujYOS8HJcolbgQjpxd3cHq4naTVjKiY/XQRAW7Jka3BzlOoaNMRnV0avbwv2gFO7P6X6qEKA4hpILSabXTMYQdCrOCvUQrtyjyoydsPl6TlN8PxWm5WKQ38oU+H5z3wQXJmnRod2jTaTAL4+Jip8/4Ir2ajbUK2wWT6lS+6vMIqjOnpH0lEL5Gq6q2achV1klnw2J379ii/HFz9xxSyo2OFSdmU0HOOmHTFee+L9hyybtwIPVEs5NAjQnDPgPR+wxKq3Bua+tiTm0MeSvDRu9MFxRZ84HFnFAatvsM3GjVHW3g6AlauYmgzcOMmt0UN14ujyfqq5Xh57rlbDZbN9LkcyqEkKvRlm0RVFXg6pirDZ0gCFCz2qvaeolqA0Zo4quihH/r7guwxUWdC3FuN7Tcia/+D3eWqjZbwf4V1NdBb9od6bIn7LMnXUhl8gPLPUWO4LBodPHRLykWX/YvPxurhLDN6UV08/SKubaxqJuOp/w0/7IG5Isb2//PJugjcxMhuedOPCf+U9PFJZpp7ZZwD35vj2QUt78lg1fLQsdUZSfV9fenv2W694lNvI9dVcIScy2UHfP+Wg2SY21Gce95wjur1R1KYSIAn2qnd/cN4PtrFX3R6qPPCP/qdVf99A751ffWI95fq2TweQcsmSV9mFYqQuUhZSz05foXq/E84vzw1h+m7rrs2Hi9S9hp5W/vVb5HsSuTOim3v/paIQ4UL/Jwv2PavSmR+sXJbvBd0f158x8jt/UbOBrt9KnbZRnmczVkiDvJIhmt2o9jgkMj1WM/mvi/oUgH8XbFOWWUv7dLeheKapatt8/4IgpBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEARBEORfx/8A44OAXjUBJ4IAAAAASUVORK5CYII=',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'data:image/png;base64,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',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAsNwWaLHBNxfvvyGRgSlibLt_2wctA1D433ivnUUa4Uf8UztUVWVpCFQV2D3SO2n5F1M&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2ZRMyqNrYFuOkxMx8zaJpsWc4PwyCogGGwYJDRG_qCaeFaowFq_iadupZSPcse7LRrU&usqp=CAU',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSf5GUwGnDy337_qJ0bHr62DngEDLzWt22N5I0o1eNIaeuwaIOV5HSQUkVga4wObBSjlo&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ).animateOnPageLoad(animationsMap[
                                                      'rowOnPageLoadAnimation1']!),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'data:image/png;base64,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',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'data:image/png;base64,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',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAsNwWaLHBNxfvvyGRgSlibLt_2wctA1D433ivnUUa4Uf8UztUVWVpCFQV2D3SO2n5F1M&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2ZRMyqNrYFuOkxMx8zaJpsWc4PwyCogGGwYJDRG_qCaeFaowFq_iadupZSPcse7LRrU&usqp=CAU',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSf5GUwGnDy337_qJ0bHr62DngEDLzWt22N5I0o1eNIaeuwaIOV5HSQUkVga4wObBSjlo&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ).animateOnPageLoad(animationsMap[
                                                      'rowOnPageLoadAnimation2']!),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'data:image/png;base64,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',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'data:image/png;base64,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',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAsNwWaLHBNxfvvyGRgSlibLt_2wctA1D433ivnUUa4Uf8UztUVWVpCFQV2D3SO2n5F1M&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2ZRMyqNrYFuOkxMx8zaJpsWc4PwyCogGGwYJDRG_qCaeFaowFq_iadupZSPcse7LRrU&usqp=CAU',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSf5GUwGnDy337_qJ0bHr62DngEDLzWt22N5I0o1eNIaeuwaIOV5HSQUkVga4wObBSjlo&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ).animateOnPageLoad(animationsMap[
                                                      'rowOnPageLoadAnimation3']!),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'data:image/png;base64,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',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'data:image/png;base64,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',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAsNwWaLHBNxfvvyGRgSlibLt_2wctA1D433ivnUUa4Uf8UztUVWVpCFQV2D3SO2n5F1M&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    40.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2ZRMyqNrYFuOkxMx8zaJpsWc4PwyCogGGwYJDRG_qCaeFaowFq_iadupZSPcse7LRrU&usqp=CAU',
                                                            width: 203.0,
                                                            height: 70.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSf5GUwGnDy337_qJ0bHr62DngEDLzWt22N5I0o1eNIaeuwaIOV5HSQUkVga4wObBSjlo&usqp=CAU',
                                                          width: 203.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ).animateOnPageLoad(animationsMap[
                                                      'rowOnPageLoadAnimation4']!),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 150.0,
                                                    height: 100.0,
                                                    decoration: const BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0x15FFFFFF),
                                                          Colors.white
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                1.0, 0.17),
                                                        end:
                                                            AlignmentDirectional(
                                                                -1.0, -0.17),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 150.0,
                                                    height: 100.0,
                                                    decoration: const BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Colors.white,
                                                          Color(0x15FFFFFF)
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                1.0, 0.17),
                                                        end:
                                                            AlignmentDirectional(
                                                                -1.0, -0.17),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
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
                              0.0, 0.0, 0.0, 30.0),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 30.0),
                          child: Stack(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            children: [
                              ClipRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 50.0,
                                    sigmaY: 50.0,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 500.0,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -0.01, -0.39),
                                          child: Container(
                                            width: 200.0,
                                            height: 200.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFE5F3FF),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.36, 0.52),
                                          child: Container(
                                            width: 164.0,
                                            height: 164.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFFFE4F5),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.81, 0.68),
                                          child: Container(
                                            width: 164.0,
                                            height: 164.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFFFE4F5),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.74, -0.7),
                                          child: Container(
                                            width: 265.0,
                                            height: 265.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFE5FFE7),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 900.0,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Wrap(
                                    spacing: 0.0,
                                    runSpacing: 0.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.up,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 40.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            MasonryGridView.builder(
                                              gridDelegate:
                                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                              ),
                                              crossAxisSpacing: 22.0,
                                              mainAxisSpacing: 10.0,
                                              itemCount: 3,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return [
                                                  () => ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32.0),
                                                        child: Image.network(
                                                          'https://leouve.com.br/wp-content/uploads/2023/02/ferramentas-para-otimizar-o-tempo-da-sua-equipe.jpg',
                                                          width: 306.0,
                                                          height: 243.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                  () => Container(
                                                        width: 100.0,
                                                        height: 90.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                      ),
                                                  () => ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32.0),
                                                        child: Image.network(
                                                          'https://asasdh.com.br/wp-content/uploads/2019/10/a_verdadeira_importancia_do_trabalho_em_equipe_asasdh.png',
                                                          width: 306.0,
                                                          height: 243.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                ][index]();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'SEO DOMAIN',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 15.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 18.0;
                                                    } else {
                                                      return 22.0;
                                                    }
                                                  }(),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: Text(
                                              'optimization of\nsearch engine\nspecialized',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    fontSize: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 16.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 26.0;
                                                      } else {
                                                        return 32.0;
                                                      }
                                                    }(),
                                                    fontWeight: FontWeight.bold,
                                                    lineHeight: 1.0,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Text(
                                              'Increase your website visibility and generate organic traffic with our comprehensive SEO solutions. Our team of experts use cutting-edge techniques and tools to optimize your website for search engines, ensuring higher rankings and a better online presence.',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF7D7D7D),
                                                    fontSize: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 14.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 16.0;
                                                      } else {
                                                        return 18.0;
                                                      }
                                                    }(),
                                                    fontWeight: FontWeight.w300,
                                                    lineHeight: 1.2,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0.0,
                          thickness: 2.0,
                          color: Color(0xFFEAEAEA),
                        ),
                        Stack(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          children: [
                            ClipRect(
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(
                                  sigmaX: 50.0,
                                  sigmaY: 50.0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      height: 460.0,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.01, -0.28),
                                            child: Container(
                                              width: 400.0,
                                              height: 400.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFFFE7D0),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.96, -0.08),
                                            child: Container(
                                              width: 400.0,
                                              height: 400.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFD0FFDB),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.9, -0.45),
                                            child: Container(
                                              width: 400.0,
                                              height: 400.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFCEFC9F),
                                                shape: BoxShape.circle,
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Develop your app\nwith us and achieve success!',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 30.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 35.0;
                                                    } else {
                                                      return 45.0;
                                                    }
                                                  }(),
                                                  fontWeight: FontWeight.bold,
                                                  lineHeight: 1.2,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation2']!),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
                                            child: Text(
                                              'We have a qualified team of application developers,\n  UX/UI designers and technology experts.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF737373),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w300,
                                                    lineHeight: 1.1,
                                                  ),
                                            ),
                                          ),
                                          Wrap(
                                            spacing: 20.0,
                                            runSpacing: 15.0,
                                            alignment: WrapAlignment.center,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 8.0, 0.0),
                                                child: SizedBox(
                                                  width: 300.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .tfEmail2Controller,
                                                    focusNode: _model
                                                        .tfEmail2FocusNode,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintText:
                                                          'Enter your email address',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    validator: _model
                                                        .tfEmail2ControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Fique atualizado',
                                                options: FFButtonOptions(
                                                  width: 178.0,
                                                  height: 45.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          22.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: Wrap(
                                              spacing: 20.0,
                                              runSpacing: 20.0,
                                              alignment: WrapAlignment.center,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/landing-p-marketing-pia49p/assets/78ho35wkgb6z/logoipsum.png',
                                                        width: 120.0,
                                                        height: 40.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Text(
                                                      'We are the team of professionals\nyour project needs.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                lineHeight: 1.1,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        'Visit our social networks',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    const Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .instagram,
                                                          color:
                                                              Color(0xFFFF2E7C),
                                                          size: 24.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .facebook,
                                                            color: Color(
                                                                0xFF2E63FF),
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .whatsapp,
                                                          color:
                                                              Color(0xFF1FB723),
                                                          size: 24.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Aicrus academy 2023',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Text(
                                          'Done with ❤ Aicrus',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
