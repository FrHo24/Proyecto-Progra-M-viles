import '/flutter_flow/flutter_flow_util.dart';
import 'editar_admin_widget.dart' show EditarAdminWidget;
import 'package:flutter/material.dart';

class EditarAdminModel extends FlutterFlowModel<EditarAdminWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_Edit_NombreAdmin widget.
  FocusNode? txtEditNombreAdminFocusNode;
  TextEditingController? txtEditNombreAdminTextController;
  String? Function(BuildContext, String?)?
      txtEditNombreAdminTextControllerValidator;
  String? _txtEditNombreAdminTextControllerValidator(
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

  // State field(s) for txt_Edit_ApellidosAdmin widget.
  FocusNode? txtEditApellidosAdminFocusNode;
  TextEditingController? txtEditApellidosAdminTextController;
  String? Function(BuildContext, String?)?
      txtEditApellidosAdminTextControllerValidator;
  String? _txtEditApellidosAdminTextControllerValidator(
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

  // State field(s) for txt_Edit_EmailAdmin widget.
  FocusNode? txtEditEmailAdminFocusNode;
  TextEditingController? txtEditEmailAdminTextController;
  String? Function(BuildContext, String?)?
      txtEditEmailAdminTextControllerValidator;
  String? _txtEditEmailAdminTextControllerValidator(
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

  // State field(s) for txt_Edit_IDAdmin widget.
  FocusNode? txtEditIDAdminFocusNode;
  TextEditingController? txtEditIDAdminTextController;
  String? Function(BuildContext, String?)?
      txtEditIDAdminTextControllerValidator;
  String? _txtEditIDAdminTextControllerValidator(
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

  // State field(s) for txt_Edit_NTelefonoAdmin widget.
  FocusNode? txtEditNTelefonoAdminFocusNode;
  TextEditingController? txtEditNTelefonoAdminTextController;
  String? Function(BuildContext, String?)?
      txtEditNTelefonoAdminTextControllerValidator;
  String? _txtEditNTelefonoAdminTextControllerValidator(
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
    txtEditNombreAdminTextControllerValidator =
        _txtEditNombreAdminTextControllerValidator;
    txtEditApellidosAdminTextControllerValidator =
        _txtEditApellidosAdminTextControllerValidator;
    txtEditEmailAdminTextControllerValidator =
        _txtEditEmailAdminTextControllerValidator;
    txtEditIDAdminTextControllerValidator =
        _txtEditIDAdminTextControllerValidator;
    txtEditNTelefonoAdminTextControllerValidator =
        _txtEditNTelefonoAdminTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditNombreAdminFocusNode?.dispose();
    txtEditNombreAdminTextController?.dispose();

    txtEditApellidosAdminFocusNode?.dispose();
    txtEditApellidosAdminTextController?.dispose();

    txtEditEmailAdminFocusNode?.dispose();
    txtEditEmailAdminTextController?.dispose();

    txtEditIDAdminFocusNode?.dispose();
    txtEditIDAdminTextController?.dispose();

    txtEditNTelefonoAdminFocusNode?.dispose();
    txtEditNTelefonoAdminTextController?.dispose();
  }
}
