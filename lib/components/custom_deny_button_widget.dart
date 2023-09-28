import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_deny_button_model.dart';
export 'custom_deny_button_model.dart';

class CustomDenyButtonWidget extends StatefulWidget {
  const CustomDenyButtonWidget({Key? key}) : super(key: key);

  @override
  _CustomDenyButtonWidgetState createState() => _CustomDenyButtonWidgetState();
}

class _CustomDenyButtonWidgetState extends State<CustomDenyButtonWidget> {
  late CustomDenyButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDenyButtonModel());
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
            'assets/images/Boton_copy_3.png',
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
                'Deny',
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
