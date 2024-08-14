import '/flutter_flow/flutter_flow_util.dart';
import 'editar_producto_widget.dart' show EditarProductoWidget;
import 'package:flutter/material.dart';

class EditarProductoModel extends FlutterFlowModel<EditarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_ENombreProducto widget.
  FocusNode? txtENombreProductoFocusNode;
  TextEditingController? txtENombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtENombreProductoTextControllerValidator;
  String? _txtENombreProductoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2ohxna8d' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'm9sdy4o4' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_EDescripcion widget.
  FocusNode? txtEDescripcionFocusNode;
  TextEditingController? txtEDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtEDescripcionTextControllerValidator;
  String? _txtEDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'na93967y' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'nhkuoycj' /* Debe ingresar la duración del ... */,
      );
    }
    return null;
  }

  // State field(s) for txt_EPrecio widget.
  FocusNode? txtEPrecioFocusNode;
  TextEditingController? txtEPrecioTextController;
  String? Function(BuildContext, String?)? txtEPrecioTextControllerValidator;
  String? _txtEPrecioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zy9mlhby' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'zz398vtq' /* Debe ingresar la categoría del... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ECantidad widget.
  FocusNode? txtECantidadFocusNode;
  TextEditingController? txtECantidadTextController;
  String? Function(BuildContext, String?)? txtECantidadTextControllerValidator;
  String? _txtECantidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qz858ycs' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '8jw8hx5s' /* Debe ingresar las áreas de enf... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ECategoria widget.
  FocusNode? txtECategoriaFocusNode;
  TextEditingController? txtECategoriaTextController;
  String? Function(BuildContext, String?)? txtECategoriaTextControllerValidator;
  // State field(s) for txt_EProveedor widget.
  FocusNode? txtEProveedorFocusNode;
  TextEditingController? txtEProveedorTextController;
  String? Function(BuildContext, String?)? txtEProveedorTextControllerValidator;
  String? _txtEProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pltyaf3p' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'zw0929pk' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtENombreProductoTextControllerValidator =
        _txtENombreProductoTextControllerValidator;
    txtEDescripcionTextControllerValidator =
        _txtEDescripcionTextControllerValidator;
    txtEPrecioTextControllerValidator = _txtEPrecioTextControllerValidator;
    txtECantidadTextControllerValidator = _txtECantidadTextControllerValidator;
    txtEProveedorTextControllerValidator =
        _txtEProveedorTextControllerValidator;
  }

  @override
  void dispose() {
    txtENombreProductoFocusNode?.dispose();
    txtENombreProductoTextController?.dispose();

    txtEDescripcionFocusNode?.dispose();
    txtEDescripcionTextController?.dispose();

    txtEPrecioFocusNode?.dispose();
    txtEPrecioTextController?.dispose();

    txtECantidadFocusNode?.dispose();
    txtECantidadTextController?.dispose();

    txtECategoriaFocusNode?.dispose();
    txtECategoriaTextController?.dispose();

    txtEProveedorFocusNode?.dispose();
    txtEProveedorTextController?.dispose();
  }
}
