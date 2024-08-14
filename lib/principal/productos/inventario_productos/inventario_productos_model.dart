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

  // State field(s) for txt_ANombreProductos widget.
  FocusNode? txtANombreProductosFocusNode;
  TextEditingController? txtANombreProductosTextController;
  String? Function(BuildContext, String?)?
      txtANombreProductosTextControllerValidator;
  // State field(s) for txt_ADescripcionProducto widget.
  FocusNode? txtADescripcionProductoFocusNode;
  TextEditingController? txtADescripcionProductoTextController;
  String? Function(BuildContext, String?)?
      txtADescripcionProductoTextControllerValidator;
  // State field(s) for txt_APrecioProducto widget.
  FocusNode? txtAPrecioProductoFocusNode;
  TextEditingController? txtAPrecioProductoTextController;
  String? Function(BuildContext, String?)?
      txtAPrecioProductoTextControllerValidator;
  // State field(s) for txt_ACantProducto widget.
  FocusNode? txtACantProductoFocusNode;
  TextEditingController? txtACantProductoTextController;
  String? Function(BuildContext, String?)?
      txtACantProductoTextControllerValidator;
  // State field(s) for txt_ACategoriaProducto widget.
  FocusNode? txtACategoriaProductoFocusNode;
  TextEditingController? txtACategoriaProductoTextController;
  String? Function(BuildContext, String?)?
      txtACategoriaProductoTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtANombreProductosFocusNode?.dispose();
    txtANombreProductosTextController?.dispose();

    txtADescripcionProductoFocusNode?.dispose();
    txtADescripcionProductoTextController?.dispose();

    txtAPrecioProductoFocusNode?.dispose();
    txtAPrecioProductoTextController?.dispose();

    txtACantProductoFocusNode?.dispose();
    txtACantProductoTextController?.dispose();

    txtACategoriaProductoFocusNode?.dispose();
    txtACategoriaProductoTextController?.dispose();
  }
}
