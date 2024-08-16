import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_equipo_widget.dart' show InventarioEquipoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioEquipoModel extends FlutterFlowModel<InventarioEquipoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txtNEquipo widget.
  FocusNode? txtNEquipoFocusNode;
  TextEditingController? txtNEquipoTextController;
  String? Function(BuildContext, String?)? txtNEquipoTextControllerValidator;
  // State field(s) for txtCEquipo widget.
  FocusNode? txtCEquipoFocusNode1;
  TextEditingController? txtCEquipoTextController1;
  String? Function(BuildContext, String?)? txtCEquipoTextController1Validator;
  // State field(s) for txtCEquipo widget.
  FocusNode? txtCEquipoFocusNode2;
  TextEditingController? txtCEquipoTextController2;
  String? Function(BuildContext, String?)? txtCEquipoTextController2Validator;
  // State field(s) for txtUID widget.
  FocusNode? txtUIDFocusNode;
  TextEditingController? txtUIDTextController;
  String? Function(BuildContext, String?)? txtUIDTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtNEquipoFocusNode?.dispose();
    txtNEquipoTextController?.dispose();

    txtCEquipoFocusNode1?.dispose();
    txtCEquipoTextController1?.dispose();

    txtCEquipoFocusNode2?.dispose();
    txtCEquipoTextController2?.dispose();

    txtUIDFocusNode?.dispose();
    txtUIDTextController?.dispose();
  }
}
