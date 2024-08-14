import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_proveedor_widget.dart' show EliminarProveedorWidget;
import 'package:flutter/material.dart';

class EliminarProveedorModel extends FlutterFlowModel<EliminarProveedorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarProveedor widget.
  FocusNode? txtEliminarProveedorFocusNode;
  TextEditingController? txtEliminarProveedorTextController;
  String? Function(BuildContext, String?)?
      txtEliminarProveedorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarProveedorFocusNode?.dispose();
    txtEliminarProveedorTextController?.dispose();
  }
}
