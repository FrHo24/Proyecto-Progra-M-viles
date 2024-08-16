import '/flutter_flow/flutter_flow_util.dart';
import 'editar_proveedor_widget.dart' show EditarProveedorWidget;
import 'package:flutter/material.dart';

class EditarProveedorModel extends FlutterFlowModel<EditarProveedorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_NNP widget.
  FocusNode? txtNNPFocusNode;
  TextEditingController? txtNNPTextController;
  String? Function(BuildContext, String?)? txtNNPTextControllerValidator;
  String? _txtNNPTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for txt_NCP widget.
  FocusNode? txtNCPFocusNode;
  TextEditingController? txtNCPTextController;
  String? Function(BuildContext, String?)? txtNCPTextControllerValidator;
  String? _txtNCPTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for txt_NTP widget.
  FocusNode? txtNTPFocusNode;
  TextEditingController? txtNTPTextController;
  String? Function(BuildContext, String?)? txtNTPTextControllerValidator;
  String? _txtNTPTextControllerValidator(BuildContext context, String? val) {
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
    txtNNPTextControllerValidator = _txtNNPTextControllerValidator;
    txtNCPTextControllerValidator = _txtNCPTextControllerValidator;
    txtNTPTextControllerValidator = _txtNTPTextControllerValidator;
  }

  @override
  void dispose() {
    txtNNPFocusNode?.dispose();
    txtNNPTextController?.dispose();

    txtNCPFocusNode?.dispose();
    txtNCPTextController?.dispose();

    txtNTPFocusNode?.dispose();
    txtNTPTextController?.dispose();
  }
}
