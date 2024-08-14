import '/flutter_flow/flutter_flow_util.dart';
import 'editar_admin_widget.dart' show EditarAdminWidget;
import 'package:flutter/material.dart';

class EditarAdminModel extends FlutterFlowModel<EditarAdminWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_ENombreAdmin widget.
  FocusNode? txtENombreAdminFocusNode;
  TextEditingController? txtENombreAdminTextController;
  String? Function(BuildContext, String?)?
      txtENombreAdminTextControllerValidator;
  String? _txtENombreAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'k89wd8ve' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vqeadxdf' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_EApellidoAdmin widget.
  FocusNode? txtEApellidoAdminFocusNode;
  TextEditingController? txtEApellidoAdminTextController;
  String? Function(BuildContext, String?)?
      txtEApellidoAdminTextControllerValidator;
  String? _txtEApellidoAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zk0qytuu' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'oxcc1xkw' /* Debe ingresar la duración del ... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ECorreoAdmin widget.
  FocusNode? txtECorreoAdminFocusNode;
  TextEditingController? txtECorreoAdminTextController;
  String? Function(BuildContext, String?)?
      txtECorreoAdminTextControllerValidator;
  String? _txtECorreoAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'dt3uv1un' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'jjankk63' /* Debe ingresar la categoría del... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ECedulaAdmin widget.
  FocusNode? txtECedulaAdminFocusNode;
  TextEditingController? txtECedulaAdminTextController;
  String? Function(BuildContext, String?)?
      txtECedulaAdminTextControllerValidator;
  String? _txtECedulaAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gczyue4l' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '0wjx5fzb' /* Debe ingresar las áreas de enf... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ENTelefonoAdmin widget.
  FocusNode? txtENTelefonoAdminFocusNode;
  TextEditingController? txtENTelefonoAdminTextController;
  String? Function(BuildContext, String?)?
      txtENTelefonoAdminTextControllerValidator;
  String? _txtENTelefonoAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'vg1nu0be' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ge1har7w' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtENombreAdminTextControllerValidator =
        _txtENombreAdminTextControllerValidator;
    txtEApellidoAdminTextControllerValidator =
        _txtEApellidoAdminTextControllerValidator;
    txtECorreoAdminTextControllerValidator =
        _txtECorreoAdminTextControllerValidator;
    txtECedulaAdminTextControllerValidator =
        _txtECedulaAdminTextControllerValidator;
    txtENTelefonoAdminTextControllerValidator =
        _txtENTelefonoAdminTextControllerValidator;
  }

  @override
  void dispose() {
    txtENombreAdminFocusNode?.dispose();
    txtENombreAdminTextController?.dispose();

    txtEApellidoAdminFocusNode?.dispose();
    txtEApellidoAdminTextController?.dispose();

    txtECorreoAdminFocusNode?.dispose();
    txtECorreoAdminTextController?.dispose();

    txtECedulaAdminFocusNode?.dispose();
    txtECedulaAdminTextController?.dispose();

    txtENTelefonoAdminFocusNode?.dispose();
    txtENTelefonoAdminTextController?.dispose();
  }
}
