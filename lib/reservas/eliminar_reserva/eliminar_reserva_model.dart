import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_reserva_widget.dart' show EliminarReservaWidget;
import 'package:flutter/material.dart';

class EliminarReservaModel extends FlutterFlowModel<EliminarReservaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarReserva widget.
  FocusNode? txtEliminarReservaFocusNode;
  TextEditingController? txtEliminarReservaTextController;
  String? Function(BuildContext, String?)?
      txtEliminarReservaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarReservaFocusNode?.dispose();
    txtEliminarReservaTextController?.dispose();
  }
}
