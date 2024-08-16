import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
  // State field(s) for txtCClase widget.
  FocusNode? txtCClaseFocusNode;
  TextEditingController? txtCClaseTextController;
  String? Function(BuildContext, String?)? txtCClaseTextControllerValidator;
  // State field(s) for ddInstructor widget.
  String? ddInstructorValue;
  FormFieldController<String>? ddInstructorValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtNClaseFocusNode?.dispose();
    txtNClaseTextController?.dispose();

    txtDClaseFocusNode?.dispose();
    txtDClaseTextController?.dispose();

    txtCClaseFocusNode?.dispose();
    txtCClaseTextController?.dispose();
  }
}
