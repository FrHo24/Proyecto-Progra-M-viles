import '/flutter_flow/flutter_flow_util.dart';
import 'editar_proveedor_widget.dart' show EditarProveedorWidget;
import 'package:flutter/material.dart';

class EditarProveedorModel extends FlutterFlowModel<EditarProveedorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_Edit_NombreProveedor widget.
  FocusNode? txtEditNombreProveedorFocusNode;
  TextEditingController? txtEditNombreProveedorTextController;
  String? Function(BuildContext, String?)?
      txtEditNombreProveedorTextControllerValidator;
  String? _txtEditNombreProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'trw7brzz' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ssg2u5j2' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_Edit_EmailProveedor widget.
  FocusNode? txtEditEmailProveedorFocusNode;
  TextEditingController? txtEditEmailProveedorTextController;
  String? Function(BuildContext, String?)?
      txtEditEmailProveedorTextControllerValidator;
  String? _txtEditEmailProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mi982pxj' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '0gpsgscg' /* Debe ingresar la categoría del... */,
      );
    }
    return null;
  }

  // State field(s) for txt_Edit_NTelefonoProveedor widget.
  FocusNode? txtEditNTelefonoProveedorFocusNode;
  TextEditingController? txtEditNTelefonoProveedorTextController;
  String? Function(BuildContext, String?)?
      txtEditNTelefonoProveedorTextControllerValidator;
  String? _txtEditNTelefonoProveedorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bgfi3kny' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'jrc3v1c8' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtEditNombreProveedorTextControllerValidator =
        _txtEditNombreProveedorTextControllerValidator;
    txtEditEmailProveedorTextControllerValidator =
        _txtEditEmailProveedorTextControllerValidator;
    txtEditNTelefonoProveedorTextControllerValidator =
        _txtEditNTelefonoProveedorTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditNombreProveedorFocusNode?.dispose();
    txtEditNombreProveedorTextController?.dispose();

    txtEditEmailProveedorFocusNode?.dispose();
    txtEditEmailProveedorTextController?.dispose();

    txtEditNTelefonoProveedorFocusNode?.dispose();
    txtEditNTelefonoProveedorTextController?.dispose();
  }
}
