import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class JoiningRewardScreenWidget extends StatefulWidget {
  const JoiningRewardScreenWidget({Key? key}) : super(key: key);

  @override
  _JoiningRewardScreenWidgetState createState() =>
      _JoiningRewardScreenWidgetState();
}

class _JoiningRewardScreenWidgetState extends State<JoiningRewardScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'JoiningRewardScreen'});
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 64),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFBDD65),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                        frameRate: FrameRate(60),
                        animate: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              FFAppState().language == 'English' ? 'Congrats !' : 'बधाई हो!',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF303030),
                    fontSize: 32,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Text(
                FFAppState().language == 'English'
                    ? '₹100 credited to your MyWay wallet.'
                    : '₹100 आपके MyWay खाते में जमा हो गए।',
                style: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).background,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(72, 32, 72, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('JOINING_REWARD_SCREEN_नयी_एंट्री_दर्ज_कर');
                  logFirebaseEvent('Button_navigate_to');

                  context.goNamed('MainScreen');
                },
                text: FFAppState().language == 'English'
                    ? 'Continue'
                    : 'जारी रखें',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 48,
                  color: Color(0xFF7ED6DC),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 0.1,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
