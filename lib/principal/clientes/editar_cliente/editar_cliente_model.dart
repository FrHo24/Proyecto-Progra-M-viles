import '/flutter_flow/flutter_flow_util.dart';
import 'editar_cliente_widget.dart' show EditarClienteWidget;
import 'package:flutter/material.dart';

class EditarClienteModel extends FlutterFlowModel<EditarClienteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_ENombreCliente widget.
  FocusNode? txtENombreClienteFocusNode;
  TextEditingController? txtENombreClienteTextController;
  String? Function(BuildContext, String?)?
      txtENombreClienteTextControllerValidator;
  String? _txtENombreClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lhi54cwi' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'kvfow3pa' /* Debe ingresar el nombre del en... */,
      );
    }
    return null;
  }

  // State field(s) for txt_EApellidoCliente widget.
  FocusNode? txtEApellidoClienteFocusNode;
  TextEditingController? txtEApellidoClienteTextController;
  String? Function(BuildContext, String?)?
      txtEApellidoClienteTextControllerValidator;
  String? _txtEApellidoClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'v33ey79v' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'jztx5qvg' /* Debe ingresar la duración del ... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ECorreoCliente widget.
  FocusNode? txtECorreoClienteFocusNode1;
  TextEditingController? txtECorreoClienteTextController1;
  String? Function(BuildContext, String?)?
      txtECorreoClienteTextController1Validator;
  String? _txtECorreoClienteTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tqbdbgvf' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'r42blzy8' /* Debe ingresar la categoría del... */,
      );
    }
    return null;
  }

  // State field(s) for txt_EEdadCliente widget.
  FocusNode? txtEEdadClienteFocusNode;
  TextEditingController? txtEEdadClienteTextController;
  String? Function(BuildContext, String?)?
      txtEEdadClienteTextControllerValidator;
  String? _txtEEdadClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f7s7wmo5' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '970jtgh1' /* Debe ingresar las áreas de enf... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ENTelefonoCliente widget.
  FocusNode? txtENTelefonoClienteFocusNode;
  TextEditingController? txtENTelefonoClienteTextController;
  String? Function(BuildContext, String?)?
      txtENTelefonoClienteTextControllerValidator;
  String? _txtENTelefonoClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7nrtpo04' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vqxenqh8' /* Debe ingresar la descripción d... */,
      );
    }
    return null;
  }

  // State field(s) for txt_ECorreoCliente widget.
  FocusNode? txtECorreoClienteFocusNode2;
  TextEditingController? txtECorreoClienteTextController2;
  String? Function(BuildContext, String?)?
      txtECorreoClienteTextController2Validator;
  // State field(s) for txt_EMembresiaCliente widget.
  FocusNode? txtEMembresiaClienteFocusNode;
  TextEditingController? txtEMembresiaClienteTextController;
  String? Function(BuildContext, String?)?
      txtEMembresiaClienteTextControllerValidator;
  // State field(s) for txt_EFechaUltPago widget.
  FocusNode? txtEFechaUltPagoFocusNode;
  TextEditingController? txtEFechaUltPagoTextController;
  String? Function(BuildContext, String?)?
      txtEFechaUltPagoTextControllerValidator;
  // State field(s) for txt_EFechaProxPago widget.
  FocusNode? txtEFechaProxPagoFocusNode;
  TextEditingController? txtEFechaProxPagoTextController;
  String? Function(BuildContext, String?)?
      txtEFechaProxPagoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtENombreClienteTextControllerValidator =
        _txtENombreClienteTextControllerValidator;
    txtEApellidoClienteTextControllerValidator =
        _txtEApellidoClienteTextControllerValidator;
    txtECorreoClienteTextController1Validator =
        _txtECorreoClienteTextController1Validator;
    txtEEdadClienteTextControllerValidator =
        _txtEEdadClienteTextControllerValidator;
    txtENTelefonoClienteTextControllerValidator =
        _txtENTelefonoClienteTextControllerValidator;
  }

  @override
  void dispose() {
    txtENombreClienteFocusNode?.dispose();
    txtENombreClienteTextController?.dispose();

    txtEApellidoClienteFocusNode?.dispose();
    txtEApellidoClienteTextController?.dispose();

    txtECorreoClienteFocusNode1?.dispose();
    txtECorreoClienteTextController1?.dispose();

    txtEEdadClienteFocusNode?.dispose();
    txtEEdadClienteTextController?.dispose();

    txtENTelefonoClienteFocusNode?.dispose();
    txtENTelefonoClienteTextController?.dispose();

    txtECorreoClienteFocusNode2?.dispose();
    txtECorreoClienteTextController2?.dispose();

    txtEMembresiaClienteFocusNode?.dispose();
    txtEMembresiaClienteTextController?.dispose();

    txtEFechaUltPagoFocusNode?.dispose();
    txtEFechaUltPagoTextController?.dispose();

    txtEFechaProxPagoFocusNode?.dispose();
    txtEFechaProxPagoTextController?.dispose();
  }
}
