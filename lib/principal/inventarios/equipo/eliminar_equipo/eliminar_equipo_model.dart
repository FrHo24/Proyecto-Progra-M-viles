import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_equipo_widget.dart' show EliminarEquipoWidget;
import 'package:flutter/material.dart';

class EliminarEquipoModel extends FlutterFlowModel<EliminarEquipoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarEquipo widget.
  FocusNode? txtEliminarEquipoFocusNode;
  TextEditingController? txtEliminarEquipoTextController;
  String? Function(BuildContext, String?)?
      txtEliminarEquipoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarEquipoFocusNode?.dispose();
    txtEliminarEquipoTextController?.dispose();
  }
}
