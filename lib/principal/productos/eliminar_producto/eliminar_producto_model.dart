import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_producto_widget.dart' show EliminarProductoWidget;
import 'package:flutter/material.dart';

class EliminarProductoModel extends FlutterFlowModel<EliminarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarProducto widget.
  FocusNode? txtEliminarProductoFocusNode;
  TextEditingController? txtEliminarProductoTextController;
  String? Function(BuildContext, String?)?
      txtEliminarProductoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarProductoFocusNode?.dispose();
    txtEliminarProductoTextController?.dispose();
  }
}
