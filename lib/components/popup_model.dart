import '/components/custom_acceptbutton_widget.dart';
import '/components/custom_deny_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for customDenyButton component.
  late CustomDenyButtonModel customDenyButtonModel;
  // Model for customAcceptbutton component.
  late CustomAcceptbuttonModel customAcceptbuttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customDenyButtonModel = createModel(context, () => CustomDenyButtonModel());
    customAcceptbuttonModel =
        createModel(context, () => CustomAcceptbuttonModel());
  }

  void dispose() {
    customDenyButtonModel.dispose();
    customAcceptbuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
