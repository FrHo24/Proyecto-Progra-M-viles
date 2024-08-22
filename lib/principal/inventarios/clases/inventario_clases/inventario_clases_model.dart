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
  String? _txtAgreNombreClaseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'aould9ji' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_DescClase widget.
  FocusNode? txtAgreDescClaseFocusNode;
  TextEditingController? txtAgreDescClaseTextController;
  String? Function(BuildContext, String?)?
      txtAgreDescClaseTextControllerValidator;
  String? _txtAgreDescClaseTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nesus78z' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_CantClientes widget.
  FocusNode? txtAgreCantClientesFocusNode;
  TextEditingController? txtAgreCantClientesTextController;
  String? Function(BuildContext, String?)?
      txtAgreCantClientesTextControllerValidator;
  String? _txtAgreCantClientesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'npdbmhxr' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for dd_Agre_InstructorAsignado widget.
  String? ddAgreInstructorAsignadoValue;
  FormFieldController<String>? ddAgreInstructorAsignadoValueController;

  @override
  void initState(BuildContext context) {
    txtAgreNombreClaseTextControllerValidator =
        _txtAgreNombreClaseTextControllerValidator;
    txtAgreDescClaseTextControllerValidator =
        _txtAgreDescClaseTextControllerValidator;
    txtAgreCantClientesTextControllerValidator =
        _txtAgreCantClientesTextControllerValidator;
  }

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
