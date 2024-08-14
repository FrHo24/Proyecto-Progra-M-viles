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
  // State field(s) for txtAApellidoCliente widget.
  FocusNode? txtAApellidoClienteFocusNode;
  TextEditingController? txtAApellidoClienteTextController;
  String? Function(BuildContext, String?)?
      txtAApellidoClienteTextControllerValidator;
  // State field(s) for txtACedulaCliente widget.
  FocusNode? txtACedulaClienteFocusNode;
  TextEditingController? txtACedulaClienteTextController;
  String? Function(BuildContext, String?)?
      txtACedulaClienteTextControllerValidator;
  // State field(s) for txtAEdadCliente widget.
  FocusNode? txtAEdadClienteFocusNode;
  TextEditingController? txtAEdadClienteTextController;
  String? Function(BuildContext, String?)?
      txtAEdadClienteTextControllerValidator;
  // State field(s) for txtANTelefonoCliente widget.
  FocusNode? txtANTelefonoClienteFocusNode1;
  TextEditingController? txtANTelefonoClienteTextController1;
  String? Function(BuildContext, String?)?
      txtANTelefonoClienteTextController1Validator;
  // State field(s) for txtACorreoCliente widget.
  FocusNode? txtACorreoClienteFocusNode;
  TextEditingController? txtACorreoClienteTextController;
  String? Function(BuildContext, String?)?
      txtACorreoClienteTextControllerValidator;
  // State field(s) for txtANTelefonoCliente widget.
  FocusNode? txtANTelefonoClienteFocusNode2;
  TextEditingController? txtANTelefonoClienteTextController2;
  String? Function(BuildContext, String?)?
      txtANTelefonoClienteTextController2Validator;
  // State field(s) for txtAFechaUltimoPagoCliente widget.
  FocusNode? txtAFechaUltimoPagoClienteFocusNode;
  TextEditingController? txtAFechaUltimoPagoClienteTextController;
  String? Function(BuildContext, String?)?
      txtAFechaUltimoPagoClienteTextControllerValidator;
  // State field(s) for txtAFechaProxPagoCliente widget.
  FocusNode? txtAFechaProxPagoClienteFocusNode;
  TextEditingController? txtAFechaProxPagoClienteTextController;
  String? Function(BuildContext, String?)?
      txtAFechaProxPagoClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtANombreClienteFocusNode?.dispose();
    txtANombreClienteTextController?.dispose();

    txtAApellidoClienteFocusNode?.dispose();
    txtAApellidoClienteTextController?.dispose();

    txtACedulaClienteFocusNode?.dispose();
    txtACedulaClienteTextController?.dispose();

    txtAEdadClienteFocusNode?.dispose();
    txtAEdadClienteTextController?.dispose();

    txtANTelefonoClienteFocusNode1?.dispose();
    txtANTelefonoClienteTextController1?.dispose();

    txtACorreoClienteFocusNode?.dispose();
    txtACorreoClienteTextController?.dispose();

    txtANTelefonoClienteFocusNode2?.dispose();
    txtANTelefonoClienteTextController2?.dispose();

    txtAFechaUltimoPagoClienteFocusNode?.dispose();
    txtAFechaUltimoPagoClienteTextController?.dispose();

    txtAFechaProxPagoClienteFocusNode?.dispose();
    txtAFechaProxPagoClienteTextController?.dispose();
  }
}
