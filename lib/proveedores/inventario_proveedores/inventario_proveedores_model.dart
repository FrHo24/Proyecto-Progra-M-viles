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
  // State field(s) for txtPCorreo widget.
  FocusNode? txtPCorreoFocusNode;
  TextEditingController? txtPCorreoTextController;
  String? Function(BuildContext, String?)? txtPCorreoTextControllerValidator;
  // State field(s) for txtProducto widget.
  FocusNode? txtProductoFocusNode;
  TextEditingController? txtProductoTextController;
  String? Function(BuildContext, String?)? txtProductoTextControllerValidator;
  // State field(s) for txtUNT widget.
  FocusNode? txtUNTFocusNode;
  TextEditingController? txtUNTTextController;
  String? Function(BuildContext, String?)? txtUNTTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtNProveedorFocusNode?.dispose();
    txtNProveedorTextController?.dispose();

    txtPCorreoFocusNode?.dispose();
    txtPCorreoTextController?.dispose();

    txtProductoFocusNode?.dispose();
    txtProductoTextController?.dispose();

    txtUNTFocusNode?.dispose();
    txtUNTTextController?.dispose();
  }
}
