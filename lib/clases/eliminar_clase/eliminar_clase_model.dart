import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_clase_widget.dart' show EliminarClaseWidget;
import 'package:flutter/material.dart';

class EliminarClaseModel extends FlutterFlowModel<EliminarClaseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarClase widget.
  FocusNode? txtEliminarClaseFocusNode;
  TextEditingController? txtEliminarClaseTextController;
  String? Function(BuildContext, String?)?
      txtEliminarClaseTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarClaseFocusNode?.dispose();
    txtEliminarClaseTextController?.dispose();
  }
}
