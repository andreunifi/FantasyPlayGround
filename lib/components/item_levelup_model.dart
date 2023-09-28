import '/components/cost_manasmall_widget.dart';
import '/components/upgrade_small_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ItemLevelupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for upgradeSmall component.
  late UpgradeSmallModel upgradeSmallModel;
  // Model for CostManasmall component.
  late CostManasmallModel costManasmallModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    upgradeSmallModel = createModel(context, () => UpgradeSmallModel());
    costManasmallModel = createModel(context, () => CostManasmallModel());
  }

  void dispose() {
    upgradeSmallModel.dispose();
    costManasmallModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
