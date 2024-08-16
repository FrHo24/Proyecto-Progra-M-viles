import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_administradores_widget.dart'
    show InventarioAdministradoresWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioAdministradoresModel
    extends FlutterFlowModel<InventarioAdministradoresWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreAdmin widget.
  FocusNode? txtAgreNombreAdminFocusNode;
  TextEditingController? txtAgreNombreAdminTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreAdminTextControllerValidator;
  String? _txtAgreNombreAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cydvqhpm' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_ApellidosAdmin widget.
  FocusNode? txtAgreApellidosAdminFocusNode;
  TextEditingController? txtAgreApellidosAdminTextController;
  String? Function(BuildContext, String?)?
      txtAgreApellidosAdminTextControllerValidator;
  String? _txtAgreApellidosAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '646xqjc8' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_EmailAdmin widget.
  FocusNode? txtAgreEmailAdminFocusNode;
  TextEditingController? txtAgreEmailAdminTextController;
  String? Function(BuildContext, String?)?
      txtAgreEmailAdminTextControllerValidator;
  String? _txtAgreEmailAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qsyaxl48' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_IDAdmin widget.
  FocusNode? txtAgreIDAdminFocusNode;
  TextEditingController? txtAgreIDAdminTextController;
  String? Function(BuildContext, String?)?
      txtAgreIDAdminTextControllerValidator;
  String? _txtAgreIDAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'amhnjtmi' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_NTelefonoAdmin widget.
  FocusNode? txtAgreNTelefonoAdminFocusNode;
  TextEditingController? txtAgreNTelefonoAdminTextController;
  String? Function(BuildContext, String?)?
      txtAgreNTelefonoAdminTextControllerValidator;
  String? _txtAgreNTelefonoAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'krdkn4i6' /* Espacio Requerido */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtAgreNombreAdminTextControllerValidator =
        _txtAgreNombreAdminTextControllerValidator;
    txtAgreApellidosAdminTextControllerValidator =
        _txtAgreApellidosAdminTextControllerValidator;
    txtAgreEmailAdminTextControllerValidator =
        _txtAgreEmailAdminTextControllerValidator;
    txtAgreIDAdminTextControllerValidator =
        _txtAgreIDAdminTextControllerValidator;
    txtAgreNTelefonoAdminTextControllerValidator =
        _txtAgreNTelefonoAdminTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreAdminFocusNode?.dispose();
    txtAgreNombreAdminTextController?.dispose();

    txtAgreApellidosAdminFocusNode?.dispose();
    txtAgreApellidosAdminTextController?.dispose();

    txtAgreEmailAdminFocusNode?.dispose();
    txtAgreEmailAdminTextController?.dispose();

    txtAgreIDAdminFocusNode?.dispose();
    txtAgreIDAdminTextController?.dispose();

    txtAgreNTelefonoAdminFocusNode?.dispose();
    txtAgreNTelefonoAdminTextController?.dispose();
  }
}
