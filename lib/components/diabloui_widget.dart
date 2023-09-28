import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'diabloui_model.dart';
export 'diabloui_model.dart';

class DiablouiWidget extends StatefulWidget {
  const DiablouiWidget({Key? key}) : super(key: key);

  @override
  _DiablouiWidgetState createState() => _DiablouiWidgetState();
}

class _DiablouiWidgetState extends State<DiablouiWidget> {
  late DiablouiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiablouiModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: false,
      child: Container(
        height: 130.0,
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 47.0, 0.0, 0.0),
                      child: Container(
                        width: 200.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: LinearPercentIndicator(
                          percent: 0.2,
                          width: 200.0,
                          lineHeight: 7.0,
                          animation: true,
                          progressColor: Color(0xFFA41515),
                          backgroundColor: Color(0x00FFFFFF),
                          center: Text(
                            '50%',
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 0.4,
                    sigmaY: 0.4,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/New_Project_(1).png',
                      width: double.infinity,
                      height: 130.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(105.0, 64.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      border: Border.all(
                        color: Color(0xCA2D140A),
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      border: Border.all(
                        color: Color(0xCA2D140A),
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      border: Border.all(
                        color: Color(0xCA2D140A),
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      border: Border.all(
                        color: Color(0xCA2D140A),
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      border: Border.all(
                        color: Color(0xCA2D140A),
                        width: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    width: 30.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      border: Border.all(
                        color: Color(0xCA2D140A),
                        width: 1.0,
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 1.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
