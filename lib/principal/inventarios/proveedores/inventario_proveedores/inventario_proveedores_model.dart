import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_proveedores_widget.dart' show InventarioProveedoresWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioProveedoresModel
    extends FlutterFlowModel<InventarioProveedoresWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreProveedor widget.
  FocusNode? txtAgreNombreProveedorFocusNode;
  TextEditingController? txtAgreNombreProveedorTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreProveedorTextControllerValidator;
  String? _txtAgreNombreProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9fiq10sf' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_EmailProveedor widget.
  FocusNode? txtAgreEmailProveedorFocusNode;
  TextEditingController? txtAgreEmailProveedorTextController;
  String? Function(BuildContext, String?)?
      txtAgreEmailProveedorTextControllerValidator;
  String? _txtAgreEmailProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'z7add1i5' /* Espacio requerido */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for txt_Agre_NTelefonoProveedor widget.
  FocusNode? txtAgreNTelefonoProveedorFocusNode;
  TextEditingController? txtAgreNTelefonoProveedorTextController;
  String? Function(BuildContext, String?)?
      txtAgreNTelefonoProveedorTextControllerValidator;
  String? _txtAgreNTelefonoProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's5i1cz0b' /* Espacio requerido */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtAgreNombreProveedorTextControllerValidator =
        _txtAgreNombreProveedorTextControllerValidator;
    txtAgreEmailProveedorTextControllerValidator =
        _txtAgreEmailProveedorTextControllerValidator;
    txtAgreNTelefonoProveedorTextControllerValidator =
        _txtAgreNTelefonoProveedorTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreProveedorFocusNode?.dispose();
    txtAgreNombreProveedorTextController?.dispose();

    txtAgreEmailProveedorFocusNode?.dispose();
    txtAgreEmailProveedorTextController?.dispose();

    txtAgreNTelefonoProveedorFocusNode?.dispose();
    txtAgreNTelefonoProveedorTextController?.dispose();
  }
}
