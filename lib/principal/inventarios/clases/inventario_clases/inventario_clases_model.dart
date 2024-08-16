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

  // State field(s) for txt_Agre_NombreClase widget.
  FocusNode? txtAgreNombreClaseFocusNode;
  TextEditingController? txtAgreNombreClaseTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreClaseTextControllerValidator;
  // State field(s) for txt_Agre_DescClase widget.
  FocusNode? txtAgreDescClaseFocusNode;
  TextEditingController? txtAgreDescClaseTextController;
  String? Function(BuildContext, String?)?
      txtAgreDescClaseTextControllerValidator;
  // State field(s) for txt_Agre_CantClientes widget.
  FocusNode? txtAgreCantClientesFocusNode;
  TextEditingController? txtAgreCantClientesTextController;
  String? Function(BuildContext, String?)?
      txtAgreCantClientesTextControllerValidator;
  // State field(s) for dd_Agre_InstructorAsignado widget.
  String? ddAgreInstructorAsignadoValue;
  FormFieldController<String>? ddAgreInstructorAsignadoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreClaseFocusNode?.dispose();
    txtAgreNombreClaseTextController?.dispose();

    txtAgreDescClaseFocusNode?.dispose();
    txtAgreDescClaseTextController?.dispose();

    txtAgreCantClientesFocusNode?.dispose();
    txtAgreCantClientesTextController?.dispose();
  }
}
