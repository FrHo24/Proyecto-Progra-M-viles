import '/flutter_flow/flutter_flow_util.dart';
import 'datos_perfil_widget.dart' show DatosPerfilWidget;
import 'package:flutter/material.dart';

class DatosPerfilModel extends FlutterFlowModel<DatosPerfilWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xxsg556x' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtLastName widget.
  FocusNode? txtLastNameFocusNode;
  TextEditingController? txtLastNameTextController;
  String? Function(BuildContext, String?)? txtLastNameTextControllerValidator;
  String? _txtLastNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fe5ajhew' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtRol widget.
  FocusNode? txtRolFocusNode;
  TextEditingController? txtRolTextController;
  String? Function(BuildContext, String?)? txtRolTextControllerValidator;
  String? _txtRolTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qkutiei6' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtId widget.
  FocusNode? txtIdFocusNode;
  TextEditingController? txtIdTextController;
  String? Function(BuildContext, String?)? txtIdTextControllerValidator;
  String? _txtIdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '70fnsgrh' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtNumber widget.
  FocusNode? txtNumberFocusNode;
  TextEditingController? txtNumberTextController;
  String? Function(BuildContext, String?)? txtNumberTextControllerValidator;
  String? _txtNumberTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ydb5vgi0' /* Espacio requerido */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    txtLastNameTextControllerValidator = _txtLastNameTextControllerValidator;
    txtRolTextControllerValidator = _txtRolTextControllerValidator;
    txtIdTextControllerValidator = _txtIdTextControllerValidator;
    txtNumberTextControllerValidator = _txtNumberTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    txtLastNameFocusNode?.dispose();
    txtLastNameTextController?.dispose();

    txtRolFocusNode?.dispose();
    txtRolTextController?.dispose();

    txtIdFocusNode?.dispose();
    txtIdTextController?.dispose();

    txtNumberFocusNode?.dispose();
    txtNumberTextController?.dispose();
  }
}
