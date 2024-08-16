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

  // State field(s) for txtANombreCliente widget.
  FocusNode? txtANombreClienteFocusNode;
  TextEditingController? txtANombreClienteTextController;
  String? Function(BuildContext, String?)?
      txtANombreClienteTextControllerValidator;
  String? _txtANombreClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qn6levts' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtAApellidoCliente widget.
  FocusNode? txtAApellidoClienteFocusNode;
  TextEditingController? txtAApellidoClienteTextController;
  String? Function(BuildContext, String?)?
      txtAApellidoClienteTextControllerValidator;
  String? _txtAApellidoClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't77i7lg9' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtACedulaCliente widget.
  FocusNode? txtACedulaClienteFocusNode;
  TextEditingController? txtACedulaClienteTextController;
  String? Function(BuildContext, String?)?
      txtACedulaClienteTextControllerValidator;
  String? _txtACedulaClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fm0szui9' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtANTelefonoCliente widget.
  FocusNode? txtANTelefonoClienteFocusNode;
  TextEditingController? txtANTelefonoClienteTextController;
  String? Function(BuildContext, String?)?
      txtANTelefonoClienteTextControllerValidator;
  String? _txtANTelefonoClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rww8o5zm' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtACorreoCliente widget.
  FocusNode? txtACorreoClienteFocusNode;
  TextEditingController? txtACorreoClienteTextController;
  String? Function(BuildContext, String?)?
      txtACorreoClienteTextControllerValidator;
  String? _txtACorreoClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cjaavho5' /* Espacio Requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtANTipoMembresia widget.
  FocusNode? txtANTipoMembresiaFocusNode;
  TextEditingController? txtANTipoMembresiaTextController;
  String? Function(BuildContext, String?)?
      txtANTipoMembresiaTextControllerValidator;
  String? _txtANTipoMembresiaTextControllerValidator(
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
    txtANombreClienteTextControllerValidator =
        _txtANombreClienteTextControllerValidator;
    txtAApellidoClienteTextControllerValidator =
        _txtAApellidoClienteTextControllerValidator;
    txtACedulaClienteTextControllerValidator =
        _txtACedulaClienteTextControllerValidator;
    txtANTelefonoClienteTextControllerValidator =
        _txtANTelefonoClienteTextControllerValidator;
    txtACorreoClienteTextControllerValidator =
        _txtACorreoClienteTextControllerValidator;
    txtANTipoMembresiaTextControllerValidator =
        _txtANTipoMembresiaTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtANombreClienteFocusNode?.dispose();
    txtANombreClienteTextController?.dispose();

    txtAApellidoClienteFocusNode?.dispose();
    txtAApellidoClienteTextController?.dispose();

    txtACedulaClienteFocusNode?.dispose();
    txtACedulaClienteTextController?.dispose();

    txtANTelefonoClienteFocusNode?.dispose();
    txtANTelefonoClienteTextController?.dispose();

    txtACorreoClienteFocusNode?.dispose();
    txtACorreoClienteTextController?.dispose();

    txtANTipoMembresiaFocusNode?.dispose();
    txtANTipoMembresiaTextController?.dispose();
  }
}
