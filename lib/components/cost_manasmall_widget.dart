import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cost_manasmall_model.dart';
export 'cost_manasmall_model.dart';

class CostManasmallWidget extends StatefulWidget {
  const CostManasmallWidget({
    Key? key,
    String? cost,
  })  : this.cost = cost ?? 'Value',
        super(key: key);

  final String cost;

  @override
  _CostManasmallWidgetState createState() => _CostManasmallWidgetState();
}

class _CostManasmallWidgetState extends State<CostManasmallWidget> {
  late CostManasmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CostManasmallModel());
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
            'assets/images/imgonline-com-ua-ReplaceColor-xd9tpHUCQqQ5P.png',
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
                widget.cost,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0xFFCBC3C3),
                      fontSize: 9.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                child: Text(
                  'mana',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFCBC3C3),
                        fontSize: 9.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 2.0, 0.0, 0.0),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/114/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
