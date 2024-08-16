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

  // State field(s) for txtNProveedor widget.
  FocusNode? txtNProveedorFocusNode;
  TextEditingController? txtNProveedorTextController;
  String? Function(BuildContext, String?)? txtNProveedorTextControllerValidator;
  String? _txtNProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8uyynapd' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtPCorreo widget.
  FocusNode? txtPCorreoFocusNode;
  TextEditingController? txtPCorreoTextController;
  String? Function(BuildContext, String?)? txtPCorreoTextControllerValidator;
  String? _txtPCorreoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'z7add1i5' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtUNT widget.
  FocusNode? txtUNTFocusNode;
  TextEditingController? txtUNTTextController;
  String? Function(BuildContext, String?)? txtUNTTextControllerValidator;
  String? _txtUNTTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's5i1cz0b' /* Espacio requerido */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNProveedorTextControllerValidator =
        _txtNProveedorTextControllerValidator;
    txtPCorreoTextControllerValidator = _txtPCorreoTextControllerValidator;
    txtUNTTextControllerValidator = _txtUNTTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtNProveedorFocusNode?.dispose();
    txtNProveedorTextController?.dispose();

    txtPCorreoFocusNode?.dispose();
    txtPCorreoTextController?.dispose();

    txtUNTFocusNode?.dispose();
    txtUNTTextController?.dispose();
  }
}
