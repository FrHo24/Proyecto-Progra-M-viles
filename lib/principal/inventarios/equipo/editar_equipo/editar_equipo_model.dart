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
        'l2r0aygp' /* Espacio requerido */,
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
        '4rhulxc6' /* Espacio requerido */,
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
        'a0ys22cx' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Edit_EstadoEquipo widget.
  FocusNode? txtEditEstadoEquipoFocusNode;
  TextEditingController? txtEditEstadoEquipoTextController;
  String? Function(BuildContext, String?)?
      txtEditEstadoEquipoTextControllerValidator;
  String? _txtEditEstadoEquipoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sxrunrvd' /* Espacio requerido */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtEditNombreEquipoTextControllerValidator =
        _txtEditNombreEquipoTextControllerValidator;
    txtEditCategEquipoTextControllerValidator =
        _txtEditCategEquipoTextControllerValidator;
    txtEditCantEquipoTextControllerValidator =
        _txtEditCantEquipoTextControllerValidator;
    txtEditEstadoEquipoTextControllerValidator =
        _txtEditEstadoEquipoTextControllerValidator;
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
