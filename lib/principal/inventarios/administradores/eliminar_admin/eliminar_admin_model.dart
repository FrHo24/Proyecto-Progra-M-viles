import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_admin_widget.dart' show EliminarAdminWidget;
import 'package:flutter/material.dart';

class EliminarAdminModel extends FlutterFlowModel<EliminarAdminWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarAdmin widget.
  FocusNode? txtEliminarAdminFocusNode;
  TextEditingController? txtEliminarAdminTextController;
  String? Function(BuildContext, String?)?
      txtEliminarAdminTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarAdminFocusNode?.dispose();
    txtEliminarAdminTextController?.dispose();
  }
}
