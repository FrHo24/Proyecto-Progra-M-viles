import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_instructores_widget.dart' show InventarioInstructoresWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioInstructoresModel
    extends FlutterFlowModel<InventarioInstructoresWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreInstructor widget.
  FocusNode? txtAgreNombreInstructorFocusNode;
  TextEditingController? txtAgreNombreInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreInstructorTextControllerValidator;
  String? _txtAgreNombreInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8uyynapd' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_ApellidosInstructor widget.
  FocusNode? txtAgreApellidosInstructorFocusNode;
  TextEditingController? txtAgreApellidosInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreApellidosInstructorTextControllerValidator;
  String? _txtAgreApellidosInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '646xqjc8' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_EmailInstructor widget.
  FocusNode? txtAgreEmailInstructorFocusNode;
  TextEditingController? txtAgreEmailInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreEmailInstructorTextControllerValidator;
  String? _txtAgreEmailInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qsyaxl48' /* Espacio requerido */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for txt_Agre_IDInstructor widget.
  FocusNode? txtAgreIDInstructorFocusNode;
  TextEditingController? txtAgreIDInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreIDInstructorTextControllerValidator;
  String? _txtAgreIDInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'amhnjtmi' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_NTelefonoInstructor widget.
  FocusNode? txtAgreNTelefonoInstructorFocusNode;
  TextEditingController? txtAgreNTelefonoInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreNTelefonoInstructorTextControllerValidator;
  String? _txtAgreNTelefonoInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'krdkn4i6' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_ATrabajoInstructor widget.
  FocusNode? txtAgreATrabajoInstructorFocusNode;
  TextEditingController? txtAgreATrabajoInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreATrabajoInstructorTextControllerValidator;
  String? _txtAgreATrabajoInstructorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mt3hd3zk' /* Espacio requerido */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtAgreNombreInstructorTextControllerValidator =
        _txtAgreNombreInstructorTextControllerValidator;
    txtAgreApellidosInstructorTextControllerValidator =
        _txtAgreApellidosInstructorTextControllerValidator;
    txtAgreEmailInstructorTextControllerValidator =
        _txtAgreEmailInstructorTextControllerValidator;
    txtAgreIDInstructorTextControllerValidator =
        _txtAgreIDInstructorTextControllerValidator;
    txtAgreNTelefonoInstructorTextControllerValidator =
        _txtAgreNTelefonoInstructorTextControllerValidator;
    txtAgreATrabajoInstructorTextControllerValidator =
        _txtAgreATrabajoInstructorTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreInstructorFocusNode?.dispose();
    txtAgreNombreInstructorTextController?.dispose();

    txtAgreApellidosInstructorFocusNode?.dispose();
    txtAgreApellidosInstructorTextController?.dispose();

    txtAgreEmailInstructorFocusNode?.dispose();
    txtAgreEmailInstructorTextController?.dispose();

    txtAgreIDInstructorFocusNode?.dispose();
    txtAgreIDInstructorTextController?.dispose();

    txtAgreNTelefonoInstructorFocusNode?.dispose();
    txtAgreNTelefonoInstructorTextController?.dispose();

    txtAgreATrabajoInstructorFocusNode?.dispose();
    txtAgreATrabajoInstructorTextController?.dispose();
  }
}
