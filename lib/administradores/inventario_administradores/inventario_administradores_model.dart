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

  // State field(s) for txt_ANombreAdmin widget.
  FocusNode? txtANombreAdminFocusNode;
  TextEditingController? txtANombreAdminTextController;
  String? Function(BuildContext, String?)?
      txtANombreAdminTextControllerValidator;
  String? _txtANombreAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cydvqhpm' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_AApellidosAdmin widget.
  FocusNode? txtAApellidosAdminFocusNode;
  TextEditingController? txtAApellidosAdminTextController;
  String? Function(BuildContext, String?)?
      txtAApellidosAdminTextControllerValidator;
  String? _txtAApellidosAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '646xqjc8' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_ACorreoAdmin widget.
  FocusNode? txtACorreoAdminFocusNode;
  TextEditingController? txtACorreoAdminTextController;
  String? Function(BuildContext, String?)?
      txtACorreoAdminTextControllerValidator;
  String? _txtACorreoAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qsyaxl48' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_ACedulaAdmin widget.
  FocusNode? txtACedulaAdminFocusNode;
  TextEditingController? txtACedulaAdminTextController;
  String? Function(BuildContext, String?)?
      txtACedulaAdminTextControllerValidator;
  String? _txtACedulaAdminTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'amhnjtmi' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_ATelefonoAdmin widget.
  FocusNode? txtATelefonoAdminFocusNode;
  TextEditingController? txtATelefonoAdminTextController;
  String? Function(BuildContext, String?)?
      txtATelefonoAdminTextControllerValidator;
  String? _txtATelefonoAdminTextControllerValidator(
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
    txtANombreAdminTextControllerValidator =
        _txtANombreAdminTextControllerValidator;
    txtAApellidosAdminTextControllerValidator =
        _txtAApellidosAdminTextControllerValidator;
    txtACorreoAdminTextControllerValidator =
        _txtACorreoAdminTextControllerValidator;
    txtACedulaAdminTextControllerValidator =
        _txtACedulaAdminTextControllerValidator;
    txtATelefonoAdminTextControllerValidator =
        _txtATelefonoAdminTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtANombreAdminFocusNode?.dispose();
    txtANombreAdminTextController?.dispose();

    txtAApellidosAdminFocusNode?.dispose();
    txtAApellidosAdminTextController?.dispose();

    txtACorreoAdminFocusNode?.dispose();
    txtACorreoAdminTextController?.dispose();

    txtACedulaAdminFocusNode?.dispose();
    txtACedulaAdminTextController?.dispose();

    txtATelefonoAdminFocusNode?.dispose();
    txtATelefonoAdminTextController?.dispose();
  }
}
