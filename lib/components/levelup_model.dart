import '/components/item_levelup_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LevelupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for itemLevelup component.
  late ItemLevelupModel itemLevelupModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    itemLevelupModel = createModel(context, () => ItemLevelupModel());
  }

  void dispose() {
    itemLevelupModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
