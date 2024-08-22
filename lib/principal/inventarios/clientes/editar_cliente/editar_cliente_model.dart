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
        'lhi54cwi' /* Espacio requerido */,
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
        'v33ey79v' /* Espacio requerido */,
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
        'tqbdbgvf' /* Espacio requerido */,
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
        '7nrtpo04' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Edit_EmailCliente widget.
  FocusNode? txtEditEmailClienteFocusNode;
  TextEditingController? txtEditEmailClienteTextController;
  String? Function(BuildContext, String?)?
      txtEditEmailClienteTextControllerValidator;
  String? _txtEditEmailClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r5ongns6' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_E_SubsCliente widget.
  FocusNode? txtESubsClienteFocusNode;
  TextEditingController? txtESubsClienteTextController;
  String? Function(BuildContext, String?)?
      txtESubsClienteTextControllerValidator;
  String? _txtESubsClienteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'y2m9hdij' /* Espacio requerido */,
      );
    }

    return null;
  }

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
    txtEditEmailClienteTextControllerValidator =
        _txtEditEmailClienteTextControllerValidator;
    txtESubsClienteTextControllerValidator =
        _txtESubsClienteTextControllerValidator;
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
