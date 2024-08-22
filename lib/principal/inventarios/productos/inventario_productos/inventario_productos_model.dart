import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inventario_productos_widget.dart' show InventarioProductosWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioProductosModel
    extends FlutterFlowModel<InventarioProductosWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreProducto widget.
  FocusNode? txtAgreNombreProductoFocusNode;
  TextEditingController? txtAgreNombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreProductoTextControllerValidator;
  String? _txtAgreNombreProductoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nuo7pm66' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_DescProducto widget.
  FocusNode? txtAgreDescProductoFocusNode;
  TextEditingController? txtAgreDescProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreDescProductoTextControllerValidator;
  String? _txtAgreDescProductoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'edinrifp' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_PrecioProducto widget.
  FocusNode? txtAgrePrecioProductoFocusNode;
  TextEditingController? txtAgrePrecioProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgrePrecioProductoTextControllerValidator;
  String? _txtAgrePrecioProductoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ar9q36sb' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_CantProducto widget.
  FocusNode? txtAgreCantProductoFocusNode;
  TextEditingController? txtAgreCantProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreCantProductoTextControllerValidator;
  String? _txtAgreCantProductoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b0ij7umx' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_CategProducto widget.
  FocusNode? txtAgreCategProductoFocusNode;
  TextEditingController? txtAgreCategProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreCategProductoTextControllerValidator;
  String? _txtAgreCategProductoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'u9ms5g82' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for dd_Proveedores_Productos widget.
  String? ddProveedoresProductosValue;
  FormFieldController<String>? ddProveedoresProductosValueController;

  @override
  void initState(BuildContext context) {
    txtAgreNombreProductoTextControllerValidator =
        _txtAgreNombreProductoTextControllerValidator;
    txtAgreDescProductoTextControllerValidator =
        _txtAgreDescProductoTextControllerValidator;
    txtAgrePrecioProductoTextControllerValidator =
        _txtAgrePrecioProductoTextControllerValidator;
    txtAgreCantProductoTextControllerValidator =
        _txtAgreCantProductoTextControllerValidator;
    txtAgreCategProductoTextControllerValidator =
        _txtAgreCategProductoTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreProductoFocusNode?.dispose();
    txtAgreNombreProductoTextController?.dispose();

    txtAgreDescProductoFocusNode?.dispose();
    txtAgreDescProductoTextController?.dispose();

    txtAgrePrecioProductoFocusNode?.dispose();
    txtAgrePrecioProductoTextController?.dispose();

    txtAgreCantProductoFocusNode?.dispose();
    txtAgreCantProductoTextController?.dispose();

    txtAgreCategProductoFocusNode?.dispose();
    txtAgreCategProductoTextController?.dispose();
  }
}
