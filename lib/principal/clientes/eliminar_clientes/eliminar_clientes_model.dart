import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_clientes_widget.dart' show EliminarClientesWidget;
import 'package:flutter/material.dart';

class EliminarClientesModel extends FlutterFlowModel<EliminarClientesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarCliente widget.
  FocusNode? txtEliminarClienteFocusNode;
  TextEditingController? txtEliminarClienteTextController;
  String? Function(BuildContext, String?)?
      txtEliminarClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarClienteFocusNode?.dispose();
    txtEliminarClienteTextController?.dispose();
  }
}
