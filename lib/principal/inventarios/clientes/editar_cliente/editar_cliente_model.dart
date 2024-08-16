import '/flutter_flow/flutter_flow_util.dart';
import 'editar_cliente_widget.dart' show EditarClienteWidget;
import 'package:flutter/material.dart';

class EditarClienteModel extends FlutterFlowModel<EditarClienteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txt_Edit_NombreCliente widget.
  FocusNode? txtEditNombreClienteFocusNode;
  TextEditingController? txtEditNombreClienteTextController;
  String? Function(BuildContext, String?)?
      txtEditNombreClienteTextControllerValidator;
  String? _txtEditNombreClienteTextControllerValidator(
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

  // State field(s) for txt_Edit_ApellidoCliente widget.
  FocusNode? txtEditApellidoClienteFocusNode;
  TextEditingController? txtEditApellidoClienteTextController;
  String? Function(BuildContext, String?)?
      txtEditApellidoClienteTextControllerValidator;
  String? _txtEditApellidoClienteTextControllerValidator(
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

  // State field(s) for txt_Edit_IDCliente widget.
  FocusNode? txtEditIDClienteFocusNode;
  TextEditingController? txtEditIDClienteTextController;
  String? Function(BuildContext, String?)?
      txtEditIDClienteTextControllerValidator;
  String? _txtEditIDClienteTextControllerValidator(
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

  // State field(s) for txt_Edit_NTelefonoCliente widget.
  FocusNode? txtEditNTelefonoClienteFocusNode;
  TextEditingController? txtEditNTelefonoClienteTextController;
  String? Function(BuildContext, String?)?
      txtEditNTelefonoClienteTextControllerValidator;
  String? _txtEditNTelefonoClienteTextControllerValidator(
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

  // State field(s) for txt_Edit_EmailCliente widget.
  FocusNode? txtEditEmailClienteFocusNode;
  TextEditingController? txtEditEmailClienteTextController;
  String? Function(BuildContext, String?)?
      txtEditEmailClienteTextControllerValidator;
  // State field(s) for txt_E_SubsCliente widget.
  FocusNode? txtESubsClienteFocusNode;
  TextEditingController? txtESubsClienteTextController;
  String? Function(BuildContext, String?)?
      txtESubsClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtEditNombreClienteTextControllerValidator =
        _txtEditNombreClienteTextControllerValidator;
    txtEditApellidoClienteTextControllerValidator =
        _txtEditApellidoClienteTextControllerValidator;
    txtEditIDClienteTextControllerValidator =
        _txtEditIDClienteTextControllerValidator;
    txtEditNTelefonoClienteTextControllerValidator =
        _txtEditNTelefonoClienteTextControllerValidator;
  }

  @override
  void dispose() {
    txtEditNombreClienteFocusNode?.dispose();
    txtEditNombreClienteTextController?.dispose();

    txtEditApellidoClienteFocusNode?.dispose();
    txtEditApellidoClienteTextController?.dispose();

    txtEditIDClienteFocusNode?.dispose();
    txtEditIDClienteTextController?.dispose();

    txtEditNTelefonoClienteFocusNode?.dispose();
    txtEditNTelefonoClienteTextController?.dispose();

    txtEditEmailClienteFocusNode?.dispose();
    txtEditEmailClienteTextController?.dispose();

    txtESubsClienteFocusNode?.dispose();
    txtESubsClienteTextController?.dispose();
  }
}
