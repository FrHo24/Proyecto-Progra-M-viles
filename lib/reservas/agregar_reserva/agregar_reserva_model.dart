import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agregar_reserva_widget.dart' show AgregarReservaWidget;
import 'package:flutter/material.dart';

class AgregarReservaModel extends FlutterFlowModel<AgregarReservaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ddInstructorReserva widget.
  String? ddInstructorReservaValue;
  FormFieldController<String>? ddInstructorReservaValueController;
  // State field(s) for ddClaseReserva widget.
  String? ddClaseReservaValue;
  FormFieldController<String>? ddClaseReservaValueController;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();
  }
}
