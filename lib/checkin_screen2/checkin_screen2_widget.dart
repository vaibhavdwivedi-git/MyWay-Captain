import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckinScreen2Widget extends StatefulWidget {
  const CheckinScreen2Widget({
    Key? key,
    this.outletName,
  }) : super(key: key);

  final String? outletName;

  @override
  _CheckinScreen2WidgetState createState() => _CheckinScreen2WidgetState();
}

class _CheckinScreen2WidgetState extends State<CheckinScreen2Widget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0, 500),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  LatLng? currentUserLocationValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  double? ratingBarValue;

  @override
  void initState() {
    super.initState();

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CheckinScreen2'});
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
          ),
        ),
      );
    }

    return StreamBuilder<List<OutletsRecord>>(
      stream: queryOutletsRecord(
        queryBuilder: (outletsRecord) =>
            outletsRecord.where('Name', isEqualTo: widget.outletName),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<OutletsRecord> checkinScreen2OutletsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final checkinScreen2OutletsRecord =
            checkinScreen2OutletsRecordList.isNotEmpty
                ? checkinScreen2OutletsRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 0,
                        borderWidth: 1,
                        buttonSize: 60,
                        fillColor: Color(0x00D1D8E2),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFFD1D8E2),
                          size: 30,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'CHECKIN_SCREEN2_arrow_back_rounded_ICN_O');
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed('MainScreen');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 0,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.g_translate_rounded,
                          color: Color(0xFFD1D8E2),
                          size: 30,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'CHECKIN_SCREEN2_g_translate_rounded_ICN_');
                          logFirebaseEvent('IconButton_update_local_state');
                          FFAppState().update(() {
                            FFAppState().language =
                                FFAppState().language == 'English'
                                    ? 'Hindi'
                                    : 'English';
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                color: Color(0xFFD774A1),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/restaurant.png',
                                      ).image,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  checkinScreen2OutletsRecord!.name!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Work Sans',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 4, 0),
                                          child: Text(
                                            checkinScreen2OutletsRecord!.rating!
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Ratings',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFD4D7DA),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 4, 0),
                                          child: Text(
                                            '₹${functions.avgCost(checkinScreen2OutletsRecord!.visits, checkinScreen2OutletsRecord!.revenue).toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Average Cost',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFD4D7DA),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
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
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 32, 24, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Color(0xFFF4F4F4),
                            offset: Offset(0, 0),
                            spreadRadius: 12,
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(32, 32, 32, 32),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFAppState().language == 'English'
                                  ? 'Give your feedback'
                                  : 'खाने का फीडबैक दें',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RatingBar.builder(
                                    onRatingUpdate: (newValue) => setState(
                                        () => ratingBarValue = newValue),
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFFFA2C0),
                                    ),
                                    direction: Axis.horizontal,
                                    initialRating: ratingBarValue ??= 5,
                                    unratedColor: Color(0xFFF2F7FA),
                                    itemCount: 5,
                                    itemSize: 32,
                                    glowColor: Color(0xFFFFA2C0),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 32, 0, 0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<DriversRecord>>(
                                            stream: queryDriversRecord(
                                              queryBuilder: (driversRecord) =>
                                                  driversRecord.where(
                                                      'MobileNumber',
                                                      isEqualTo:
                                                          currentPhoneNumber),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<DriversRecord>
                                                  buttonDriversRecordList =
                                                  snapshot.data!;
                                              final buttonDriversRecord =
                                                  buttonDriversRecordList
                                                          .isNotEmpty
                                                      ? buttonDriversRecordList
                                                          .first
                                                      : null;
                                              return FFButtonWidget(
                                                onPressed: functions.getDistance(
                                                            currentUserLocationValue,
                                                            checkinScreen2OutletsRecord!
                                                                .geoLocation) ==
                                                        false
                                                    ? null
                                                    : () async {
                                                        logFirebaseEvent(
                                                            'CHECKIN_SCREEN2_PAGE_SUBMIT_BTN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        final transactionsCreateData =
                                                            createTransactionsRecordData(
                                                          date:
                                                              getCurrentTimestamp,
                                                          outlet:
                                                              checkinScreen2OutletsRecord!
                                                                  .name,
                                                          driver:
                                                              buttonDriversRecord!
                                                                  .name,
                                                          verified: false,
                                                          bill: 0,
                                                          photo: '',
                                                          approval: 'Pending',
                                                          driverContact:
                                                              buttonDriversRecord!
                                                                  .mobileNumber,
                                                        );
                                                        await TransactionsRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                transactionsCreateData);
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        final outletsUpdateData =
                                                            createOutletsRecordData(
                                                          rating: ((checkinScreen2OutletsRecord!
                                                                              .rating! *
                                                                          checkinScreen2OutletsRecord!
                                                                              .visits! +
                                                                      ratingBarValue!
                                                                          .round()) /
                                                                  (checkinScreen2OutletsRecord!
                                                                          .visits! +
                                                                      1))
                                                              .toInt(),
                                                        );
                                                        await checkinScreen2OutletsRecord!
                                                            .reference
                                                            .update(
                                                                outletsUpdateData);
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                          'ThankyouScreen',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .bottomToTop,
                                                            ),
                                                          },
                                                        );

                                                        logFirebaseEvent(
                                                            'Button_trigger_push_notification');
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              'Approval Pending ',
                                                          notificationText:
                                                              '${buttonDriversRecord!.name} has marked his entry',
                                                          userRefs: [
                                                            currentUserReference!
                                                          ],
                                                          initialPageName:
                                                              'MainScreen',
                                                          parameterData: {},
                                                        );
                                                      },
                                                text: FFAppState().language ==
                                                        'English'
                                                    ? 'Mark your entry'
                                                    : 'अपनी उपस्थी दर्ज करवाएं',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 60,
                                                  color: Color(0xFF7ED6DC),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF3F4141),
                                                        fontSize: 14,
                                                      ),
                                                  elevation: 0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  disabledColor:
                                                      Color(0xFFF2F7FA),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (functions.getDistance(currentUserLocationValue,
                                    checkinScreen2OutletsRecord!.geoLocation) ==
                                false)
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 80,
                                        constraints: BoxConstraints(
                                          maxWidth: double.infinity,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor3,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(24, 0, 24, 0),
                                              child: AutoSizeText(
                                                FFAppState().language ==
                                                        'English'
                                                    ? 'Need to be within 100m range of outlet to mark your entry.'
                                                    : 'अपनी उपस्थी दर्ज करवाने के लिए आपको ढाबे से 100 मीटर के दायरे में होना चाहिए',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
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
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
