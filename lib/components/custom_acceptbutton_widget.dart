import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_acceptbutton_model.dart';
export 'custom_acceptbutton_model.dart';

class CustomAcceptbuttonWidget extends StatefulWidget {
  const CustomAcceptbuttonWidget({Key? key}) : super(key: key);

  @override
  _CustomAcceptbuttonWidgetState createState() =>
      _CustomAcceptbuttonWidgetState();
}

class _CustomAcceptbuttonWidgetState extends State<CustomAcceptbuttonWidget> {
  late CustomAcceptbuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomAcceptbuttonModel());
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
      width: 86.0,
      height: 26.0,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.asset(
            'assets/images/Boton_copy_2.png',
          ).image,
        ),
        border: Border.all(
          color: Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Accept',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0xFFCBC3C3),
                      fontSize: 10.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
