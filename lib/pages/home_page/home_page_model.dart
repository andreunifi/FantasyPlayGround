import '/backend/schema/structs/index.dart';
import '/components/item_levelup_widget.dart';
import '/components/popup_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

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
