import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_equipo_widget.dart' show InventarioEquipoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioEquipoModel extends FlutterFlowModel<InventarioEquipoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreEquipo widget.
  FocusNode? txtAgreNombreEquipoFocusNode;
  TextEditingController? txtAgreNombreEquipoTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreEquipoTextControllerValidator;
  String? _txtAgreNombreEquipoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't5v1risq' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_CategEquipo widget.
  FocusNode? txtAgreCategEquipoFocusNode;
  TextEditingController? txtAgreCategEquipoTextController;
  String? Function(BuildContext, String?)?
      txtAgreCategEquipoTextControllerValidator;
  String? _txtAgreCategEquipoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rzpwss90' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_CantEquipo widget.
  FocusNode? txtAgreCantEquipoFocusNode;
  TextEditingController? txtAgreCantEquipoTextController;
  String? Function(BuildContext, String?)?
      txtAgreCantEquipoTextControllerValidator;
  String? _txtAgreCantEquipoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1b6iwvh4' /* Espacio requerido */,
      );
    }

    return null;
  }

  // State field(s) for txt_Agre_EstadoEquipo widget.
  FocusNode? txtAgreEstadoEquipoFocusNode;
  TextEditingController? txtAgreEstadoEquipoTextController;
  String? Function(BuildContext, String?)?
      txtAgreEstadoEquipoTextControllerValidator;
  String? _txtAgreEstadoEquipoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e1ttbxwy' /* Espacio requerido */,
      );
    }

    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    txtAgreNombreEquipoTextControllerValidator =
        _txtAgreNombreEquipoTextControllerValidator;
    txtAgreCategEquipoTextControllerValidator =
        _txtAgreCategEquipoTextControllerValidator;
    txtAgreCantEquipoTextControllerValidator =
        _txtAgreCantEquipoTextControllerValidator;
    txtAgreEstadoEquipoTextControllerValidator =
        _txtAgreEstadoEquipoTextControllerValidator;
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreEquipoFocusNode?.dispose();
    txtAgreNombreEquipoTextController?.dispose();

    txtAgreCategEquipoFocusNode?.dispose();
    txtAgreCategEquipoTextController?.dispose();

    txtAgreCantEquipoFocusNode?.dispose();
    txtAgreCantEquipoTextController?.dispose();

    txtAgreEstadoEquipoFocusNode?.dispose();
    txtAgreEstadoEquipoTextController?.dispose();
  }
}
