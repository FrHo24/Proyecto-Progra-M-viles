import '/flutter_flow/flutter_flow_util.dart';
import 'editar_equipo_widget.dart' show EditarEquipoWidget;
import 'package:flutter/material.dart';

class EditarEquipoModel extends FlutterFlowModel<EditarEquipoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_NNE widget.
  FocusNode? txtNNEFocusNode;
  TextEditingController? txtNNETextController;
  String? Function(BuildContext, String?)? txtNNETextControllerValidator;
  String? _txtNNETextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l2r0aygp' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'hul7f72y' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NCE widget.
  FocusNode? txtNCEFocusNode1;
  TextEditingController? txtNCETextController1;
  String? Function(BuildContext, String?)? txtNCETextController1Validator;
  String? _txtNCETextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4rhulxc6' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'c2pcs0u7' /* Debe ingresar la categoría del... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NCE widget.
  FocusNode? txtNCEFocusNode2;
  TextEditingController? txtNCETextController2;
  String? Function(BuildContext, String?)? txtNCETextController2Validator;
  String? _txtNCETextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a0ys22cx' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '0jcvpese' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NEE widget.
  FocusNode? txtNEEFocusNode;
  TextEditingController? txtNEETextController;
  String? Function(BuildContext, String?)? txtNEETextControllerValidator;
  // State field(s) for txt_UME widget.
  FocusNode? txtUMEFocusNode;
  TextEditingController? txtUMETextController;
  String? Function(BuildContext, String?)? txtUMETextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtNNETextControllerValidator = _txtNNETextControllerValidator;
    txtNCETextController1Validator = _txtNCETextController1Validator;
    txtNCETextController2Validator = _txtNCETextController2Validator;
  }

  @override
  void dispose() {
    txtNNEFocusNode?.dispose();
    txtNNETextController?.dispose();

    txtNCEFocusNode1?.dispose();
    txtNCETextController1?.dispose();

    txtNCEFocusNode2?.dispose();
    txtNCETextController2?.dispose();

    txtNEEFocusNode?.dispose();
    txtNEETextController?.dispose();

    txtUMEFocusNode?.dispose();
    txtUMETextController?.dispose();
  }
}
