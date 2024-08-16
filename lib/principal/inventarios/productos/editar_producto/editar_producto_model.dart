import '/flutter_flow/flutter_flow_util.dart';
import 'editar_producto_widget.dart' show EditarProductoWidget;
import 'package:flutter/material.dart';

class EditarProductoModel extends FlutterFlowModel<EditarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_Edit_NombreProducto widget.
  FocusNode? txtEditNombreProductoFocusNode;
  TextEditingController? txtEditNombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtEditNombreProductoTextControllerValidator;
  String? _txtEditNombreProductoTextControllerValidator(
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

  // State field(s) for txt_Edit_DescProducto widget.
  FocusNode? txtEditDescProductoFocusNode;
  TextEditingController? txtEditDescProductoTextController;
  String? Function(BuildContext, String?)?
      txtEditDescProductoTextControllerValidator;
  String? _txtEditDescProductoTextControllerValidator(
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

  // State field(s) for txt_Edit_PrecioProducto widget.
  FocusNode? txtEditPrecioProductoFocusNode;
  TextEditingController? txtEditPrecioProductoTextController;
  String? Function(BuildContext, String?)?
      txtEditPrecioProductoTextControllerValidator;
  String? _txtEditPrecioProductoTextControllerValidator(
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

  // State field(s) for txt_Edit_CantProducto widget.
  FocusNode? txtEditCantProductoFocusNode;
  TextEditingController? txtEditCantProductoTextController;
  String? Function(BuildContext, String?)?
      txtEditCantProductoTextControllerValidator;
  String? _txtEditCantProductoTextControllerValidator(
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

  // State field(s) for txt_Edit_CategProducto widget.
  FocusNode? txtEditCategProductoFocusNode;
  TextEditingController? txtEditCategProductoTextController;
  String? Function(BuildContext, String?)?
      txtEditCategProductoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtEditNombreProductoTextControllerValidator =
        _txtEditNombreProductoTextControllerValidator;
    txtEditDescProductoTextControllerValidator =
        _txtEditDescProductoTextControllerValidator;
    txtEditPrecioProductoTextControllerValidator =
        _txtEditPrecioProductoTextControllerValidator;
    txtEditCantProductoTextControllerValidator =
        _txtEditCantProductoTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditNombreProductoFocusNode?.dispose();
    txtEditNombreProductoTextController?.dispose();

    txtEditDescProductoFocusNode?.dispose();
    txtEditDescProductoTextController?.dispose();

    txtEditPrecioProductoFocusNode?.dispose();
    txtEditPrecioProductoTextController?.dispose();

    txtEditCantProductoFocusNode?.dispose();
    txtEditCantProductoTextController?.dispose();

    txtEditCategProductoFocusNode?.dispose();
    txtEditCategProductoTextController?.dispose();
  }
}
