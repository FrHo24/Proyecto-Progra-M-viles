import '/flutter_flow/flutter_flow_util.dart';
import 'editar_instructor_widget.dart' show EditarInstructorWidget;
import 'package:flutter/material.dart';

class EditarInstructorModel extends FlutterFlowModel<EditarInstructorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_Edit_NombreInstructor widget.
  FocusNode? txtEditNombreInstructorFocusNode;
  TextEditingController? txtEditNombreInstructorTextController;
  String? Function(BuildContext, String?)?
      txtEditNombreInstructorTextControllerValidator;
  String? _txtEditNombreInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0iq5r7f3' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Edit_ApellidoInstructor widget.
  FocusNode? txtEditApellidoInstructorFocusNode;
  TextEditingController? txtEditApellidoInstructorTextController;
  String? Function(BuildContext, String?)?
      txtEditApellidoInstructorTextControllerValidator;
  String? _txtEditApellidoInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zs1xixiw' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Edit_Email_Instructor widget.
  FocusNode? txtEditEmailInstructorFocusNode;
  TextEditingController? txtEditEmailInstructorTextController;
  String? Function(BuildContext, String?)?
      txtEditEmailInstructorTextControllerValidator;
  String? _txtEditEmailInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n8dyzqv4' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Edit_IDInstructor widget.
  FocusNode? txtEditIDInstructorFocusNode;
  TextEditingController? txtEditIDInstructorTextController;
  String? Function(BuildContext, String?)?
      txtEditIDInstructorTextControllerValidator;
  String? _txtEditIDInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gg4di69a' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Edit_NTelefonoInstructor widget.
  FocusNode? txtEditNTelefonoInstructorFocusNode;
  TextEditingController? txtEditNTelefonoInstructorTextController;
  String? Function(BuildContext, String?)?
      txtEditNTelefonoInstructorTextControllerValidator;
  String? _txtEditNTelefonoInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0gy7dqin' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Edit_ATrabajoInstructor widget.
  FocusNode? txtEditATrabajoInstructorFocusNode;
  TextEditingController? txtEditATrabajoInstructorTextController;
  String? Function(BuildContext, String?)?
      txtEditATrabajoInstructorTextControllerValidator;
  String? _txtEditATrabajoInstructorTextControllerValidator(
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
    txtEditNombreInstructorTextControllerValidator =
        _txtEditNombreInstructorTextControllerValidator;
    txtEditApellidoInstructorTextControllerValidator =
        _txtEditApellidoInstructorTextControllerValidator;
    txtEditEmailInstructorTextControllerValidator =
        _txtEditEmailInstructorTextControllerValidator;
    txtEditIDInstructorTextControllerValidator =
        _txtEditIDInstructorTextControllerValidator;
    txtEditNTelefonoInstructorTextControllerValidator =
        _txtEditNTelefonoInstructorTextControllerValidator;
    txtEditATrabajoInstructorTextControllerValidator =
        _txtEditATrabajoInstructorTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditNombreInstructorFocusNode?.dispose();
    txtEditNombreInstructorTextController?.dispose();

    txtEditApellidoInstructorFocusNode?.dispose();
    txtEditApellidoInstructorTextController?.dispose();

    txtEditEmailInstructorFocusNode?.dispose();
    txtEditEmailInstructorTextController?.dispose();

    txtEditIDInstructorFocusNode?.dispose();
    txtEditIDInstructorTextController?.dispose();

    txtEditNTelefonoInstructorFocusNode?.dispose();
    txtEditNTelefonoInstructorTextController?.dispose();

    txtEditATrabajoInstructorFocusNode?.dispose();
    txtEditATrabajoInstructorTextController?.dispose();
  }
}
