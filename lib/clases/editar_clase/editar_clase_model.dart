import '/flutter_flow/flutter_flow_util.dart';
import 'editar_clase_widget.dart' show EditarClaseWidget;
import 'package:flutter/material.dart';

class EditarClaseModel extends FlutterFlowModel<EditarClaseWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_NNC widget.
  FocusNode? txtNNCFocusNode;
  TextEditingController? txtNNCTextController;
  String? Function(BuildContext, String?)? txtNNCTextControllerValidator;
  String? _txtNNCTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5qvtn65i' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'wei9taw7' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NDC widget.
  FocusNode? txtNDCFocusNode;
  TextEditingController? txtNDCTextController;
  String? Function(BuildContext, String?)? txtNDCTextControllerValidator;
  String? _txtNDCTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gnh2mt94' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'kfg5jans' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  // State field(s) for txt_NIC widget.
  FocusNode? txtNICFocusNode;
  TextEditingController? txtNICTextController;
  String? Function(BuildContext, String?)? txtNICTextControllerValidator;
  // State field(s) for txt_NCM widget.
  FocusNode? txtNCMFocusNode;
  TextEditingController? txtNCMTextController;
  String? Function(BuildContext, String?)? txtNCMTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtNNCTextControllerValidator = _txtNNCTextControllerValidator;
    txtNDCTextControllerValidator = _txtNDCTextControllerValidator;
  }

  @override
  void dispose() {
    txtNNCFocusNode?.dispose();
    txtNNCTextController?.dispose();

    txtNDCFocusNode?.dispose();
    txtNDCTextController?.dispose();

    txtNICFocusNode?.dispose();
    txtNICTextController?.dispose();

    txtNCMFocusNode?.dispose();
    txtNCMTextController?.dispose();
  }
}
