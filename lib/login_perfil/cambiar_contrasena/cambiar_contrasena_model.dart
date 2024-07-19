import '/flutter_flow/flutter_flow_util.dart';
import 'cambiar_contrasena_widget.dart' show CambiarContrasenaWidget;
import 'package:flutter/material.dart';

class CambiarContrasenaModel extends FlutterFlowModel<CambiarContrasenaWidget> {
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
