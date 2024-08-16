import '/flutter_flow/flutter_flow_util.dart';
import 'recuperar_contra_widget.dart' show RecuperarContraWidget;
import 'package:flutter/material.dart';

class RecuperarContraModel extends FlutterFlowModel<RecuperarContraWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddressRecover widget.
  FocusNode? emailAddressRecoverFocusNode;
  TextEditingController? emailAddressRecoverTextController;
  String? Function(BuildContext, String?)?
      emailAddressRecoverTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressRecoverFocusNode?.dispose();
    emailAddressRecoverTextController?.dispose();
  }
}
