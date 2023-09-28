import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upgrade_small_model.dart';
export 'upgrade_small_model.dart';

class UpgradeSmallWidget extends StatefulWidget {
  const UpgradeSmallWidget({Key? key}) : super(key: key);

  @override
  _UpgradeSmallWidgetState createState() => _UpgradeSmallWidgetState();
}

class _UpgradeSmallWidgetState extends State<UpgradeSmallWidget> {
  late UpgradeSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpgradeSmallModel());
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
      width: 90.0,
      height: 30.0,
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
                'Upgrade',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0xFFCBC3C3),
                      fontSize: 9.0,
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
