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
  // State field(s) for txt_AApellidosAdmin widget.
  FocusNode? txtAApellidosAdminFocusNode;
  TextEditingController? txtAApellidosAdminTextController;
  String? Function(BuildContext, String?)?
      txtAApellidosAdminTextControllerValidator;
  // State field(s) for txt_ACorreoAdmin widget.
  FocusNode? txtACorreoAdminFocusNode;
  TextEditingController? txtACorreoAdminTextController;
  String? Function(BuildContext, String?)?
      txtACorreoAdminTextControllerValidator;
  // State field(s) for txt_ACedulaAdmin widget.
  FocusNode? txtACedulaAdminFocusNode;
  TextEditingController? txtACedulaAdminTextController;
  String? Function(BuildContext, String?)?
      txtACedulaAdminTextControllerValidator;
  // State field(s) for txt_ATelefonoAdmin widget.
  FocusNode? txtATelefonoAdminFocusNode;
  TextEditingController? txtATelefonoAdminTextController;
  String? Function(BuildContext, String?)?
      txtATelefonoAdminTextControllerValidator;

  @override
  void initState(BuildContext context) {}

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
