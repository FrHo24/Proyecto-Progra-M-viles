import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_clases_widget.dart' show InventarioClasesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioClasesModel extends FlutterFlowModel<InventarioClasesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txtNClase widget.
  FocusNode? txtNClaseFocusNode;
  TextEditingController? txtNClaseTextController;
  String? Function(BuildContext, String?)? txtNClaseTextControllerValidator;
  // State field(s) for txtDClase widget.
  FocusNode? txtDClaseFocusNode;
  TextEditingController? txtDClaseTextController;
  String? Function(BuildContext, String?)? txtDClaseTextControllerValidator;
  // State field(s) for txtInstructor widget.
  FocusNode? txtInstructorFocusNode;
  TextEditingController? txtInstructorTextController;
  String? Function(BuildContext, String?)? txtInstructorTextControllerValidator;
  // State field(s) for txtCClase widget.
  FocusNode? txtCClaseFocusNode;
  TextEditingController? txtCClaseTextController;
  String? Function(BuildContext, String?)? txtCClaseTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtNClaseFocusNode?.dispose();
    txtNClaseTextController?.dispose();

    txtDClaseFocusNode?.dispose();
    txtDClaseTextController?.dispose();

    txtInstructorFocusNode?.dispose();
    txtInstructorTextController?.dispose();

    txtCClaseFocusNode?.dispose();
    txtCClaseTextController?.dispose();
  }
}
