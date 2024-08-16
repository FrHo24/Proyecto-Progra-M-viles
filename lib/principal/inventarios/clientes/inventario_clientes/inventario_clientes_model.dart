import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_clientes_widget.dart' show InventarioClientesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioClientesModel
    extends FlutterFlowModel<InventarioClientesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreCliente widget.
  FocusNode? txtAgreNombreClienteFocusNode;
  TextEditingController? txtAgreNombreClienteTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreClienteTextControllerValidator;
  String? _txtAgreNombreClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qn6levts' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_ApellidoCliente widget.
  FocusNode? txtAgreApellidoClienteFocusNode;
  TextEditingController? txtAgreApellidoClienteTextController;
  String? Function(BuildContext, String?)?
      txtAgreApellidoClienteTextControllerValidator;
  String? _txtAgreApellidoClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't77i7lg9' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_CedulaCliente widget.
  FocusNode? txtAgreCedulaClienteFocusNode;
  TextEditingController? txtAgreCedulaClienteTextController;
  String? Function(BuildContext, String?)?
      txtAgreCedulaClienteTextControllerValidator;
  String? _txtAgreCedulaClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fm0szui9' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_NTelefonoCliente widget.
  FocusNode? txtAgreNTelefonoClienteFocusNode;
  TextEditingController? txtAgreNTelefonoClienteTextController;
  String? Function(BuildContext, String?)?
      txtAgreNTelefonoClienteTextControllerValidator;
  String? _txtAgreNTelefonoClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rww8o5zm' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_EmailCliente widget.
  FocusNode? txtAgreEmailClienteFocusNode;
  TextEditingController? txtAgreEmailClienteTextController;
  String? Function(BuildContext, String?)?
      txtAgreEmailClienteTextControllerValidator;
  String? _txtAgreEmailClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cjaavho5' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_TipoSubs widget.
  FocusNode? txtAgreTipoSubsFocusNode;
  TextEditingController? txtAgreTipoSubsTextController;
  String? Function(BuildContext, String?)?
      txtAgreTipoSubsTextControllerValidator;
  String? _txtAgreTipoSubsTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xis2k4o5' /* Espacio Requerido */,
      );
    }

    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    txtAgreNombreClienteTextControllerValidator =
        _txtAgreNombreClienteTextControllerValidator;
    txtAgreApellidoClienteTextControllerValidator =
        _txtAgreApellidoClienteTextControllerValidator;
    txtAgreCedulaClienteTextControllerValidator =
        _txtAgreCedulaClienteTextControllerValidator;
    txtAgreNTelefonoClienteTextControllerValidator =
        _txtAgreNTelefonoClienteTextControllerValidator;
    txtAgreEmailClienteTextControllerValidator =
        _txtAgreEmailClienteTextControllerValidator;
    txtAgreTipoSubsTextControllerValidator =
        _txtAgreTipoSubsTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreClienteFocusNode?.dispose();
    txtAgreNombreClienteTextController?.dispose();

    txtAgreApellidoClienteFocusNode?.dispose();
    txtAgreApellidoClienteTextController?.dispose();

    txtAgreCedulaClienteFocusNode?.dispose();
    txtAgreCedulaClienteTextController?.dispose();

    txtAgreNTelefonoClienteFocusNode?.dispose();
    txtAgreNTelefonoClienteTextController?.dispose();

    txtAgreEmailClienteFocusNode?.dispose();
    txtAgreEmailClienteTextController?.dispose();

    txtAgreTipoSubsFocusNode?.dispose();
    txtAgreTipoSubsTextController?.dispose();
  }
}
