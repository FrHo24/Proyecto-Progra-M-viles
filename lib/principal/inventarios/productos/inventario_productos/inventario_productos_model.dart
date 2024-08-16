import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inventario_productos_widget.dart' show InventarioProductosWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioProductosModel
    extends FlutterFlowModel<InventarioProductosWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreProducto widget.
  FocusNode? txtAgreNombreProductoFocusNode;
  TextEditingController? txtAgreNombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreProductoTextControllerValidator;
  // State field(s) for txt_Agre_DescProducto widget.
  FocusNode? txtAgreDescProductoFocusNode;
  TextEditingController? txtAgreDescProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreDescProductoTextControllerValidator;
  // State field(s) for txt_Agre_PrecioProducto widget.
  FocusNode? txtAgrePrecioProductoFocusNode;
  TextEditingController? txtAgrePrecioProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgrePrecioProductoTextControllerValidator;
  // State field(s) for txt_Agre_CantProducto widget.
  FocusNode? txtAgreCantProductoFocusNode;
  TextEditingController? txtAgreCantProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreCantProductoTextControllerValidator;
  // State field(s) for txt_Agre_CategProducto widget.
  FocusNode? txtAgreCategProductoFocusNode;
  TextEditingController? txtAgreCategProductoTextController;
  String? Function(BuildContext, String?)?
      txtAgreCategProductoTextControllerValidator;
  // State field(s) for dd_Proveedores_Productos widget.
  String? ddProveedoresProductosValue;
  FormFieldController<String>? ddProveedoresProductosValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreProductoFocusNode?.dispose();
    txtAgreNombreProductoTextController?.dispose();

    txtAgreDescProductoFocusNode?.dispose();
    txtAgreDescProductoTextController?.dispose();

    txtAgrePrecioProductoFocusNode?.dispose();
    txtAgrePrecioProductoTextController?.dispose();

    txtAgreCantProductoFocusNode?.dispose();
    txtAgreCantProductoTextController?.dispose();

    txtAgreCategProductoFocusNode?.dispose();
    txtAgreCategProductoTextController?.dispose();
  }
}
