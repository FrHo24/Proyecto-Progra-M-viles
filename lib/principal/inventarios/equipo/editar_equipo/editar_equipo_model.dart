import '/flutter_flow/flutter_flow_util.dart';
import 'editar_equipo_widget.dart' show EditarEquipoWidget;
import 'package:flutter/material.dart';

class EditarEquipoModel extends FlutterFlowModel<EditarEquipoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_Edit_NombreEquipo widget.
  FocusNode? txtEditNombreEquipoFocusNode;
  TextEditingController? txtEditNombreEquipoTextController;
  String? Function(BuildContext, String?)?
      txtEditNombreEquipoTextControllerValidator;
  String? _txtEditNombreEquipoTextControllerValidator(
      BuildContext context, String? val) {
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

  // State field(s) for txt_Edit_CategEquipo widget.
  FocusNode? txtEditCategEquipoFocusNode;
  TextEditingController? txtEditCategEquipoTextController;
  String? Function(BuildContext, String?)?
      txtEditCategEquipoTextControllerValidator;
  String? _txtEditCategEquipoTextControllerValidator(
      BuildContext context, String? val) {
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

  // State field(s) for txt_Edit_CantEquipo widget.
  FocusNode? txtEditCantEquipoFocusNode;
  TextEditingController? txtEditCantEquipoTextController;
  String? Function(BuildContext, String?)?
      txtEditCantEquipoTextControllerValidator;
  String? _txtEditCantEquipoTextControllerValidator(
      BuildContext context, String? val) {
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

  // State field(s) for txt_Edit_EstadoEquipo widget.
  FocusNode? txtEditEstadoEquipoFocusNode;
  TextEditingController? txtEditEstadoEquipoTextController;
  String? Function(BuildContext, String?)?
      txtEditEstadoEquipoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtEditNombreEquipoTextControllerValidator =
        _txtEditNombreEquipoTextControllerValidator;
    txtEditCategEquipoTextControllerValidator =
        _txtEditCategEquipoTextControllerValidator;
    txtEditCantEquipoTextControllerValidator =
        _txtEditCantEquipoTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditNombreEquipoFocusNode?.dispose();
    txtEditNombreEquipoTextController?.dispose();

    txtEditCategEquipoFocusNode?.dispose();
    txtEditCategEquipoTextController?.dispose();

    txtEditCantEquipoFocusNode?.dispose();
    txtEditCantEquipoTextController?.dispose();

    txtEditEstadoEquipoFocusNode?.dispose();
    txtEditEstadoEquipoTextController?.dispose();
  }
}
