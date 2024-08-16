import '/flutter_flow/flutter_flow_util.dart';
import 'inventario_instructores_widget.dart' show InventarioInstructoresWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InventarioInstructoresModel
    extends FlutterFlowModel<InventarioInstructoresWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for txt_Agre_NombreInstructor widget.
  FocusNode? txtAgreNombreInstructorFocusNode;
  TextEditingController? txtAgreNombreInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreNombreInstructorTextControllerValidator;
  // State field(s) for txt_Agre_ApellidosInstructor widget.
  FocusNode? txtAgreApellidosInstructorFocusNode;
  TextEditingController? txtAgreApellidosInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreApellidosInstructorTextControllerValidator;
  // State field(s) for txt_Agre_EmailInstructor widget.
  FocusNode? txtAgreEmailInstructorFocusNode;
  TextEditingController? txtAgreEmailInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreEmailInstructorTextControllerValidator;
  // State field(s) for txt_Agre_IDInstructor widget.
  FocusNode? txtAgreIDInstructorFocusNode;
  TextEditingController? txtAgreIDInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreIDInstructorTextControllerValidator;
  // State field(s) for txt_Agre_NTelefonoInstructor widget.
  FocusNode? txtAgreNTelefonoInstructorFocusNode;
  TextEditingController? txtAgreNTelefonoInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreNTelefonoInstructorTextControllerValidator;
  // State field(s) for txt_Agre_ATrabajoInstructor widget.
  FocusNode? txtAgreATrabajoInstructorFocusNode;
  TextEditingController? txtAgreATrabajoInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAgreATrabajoInstructorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtAgreNombreInstructorFocusNode?.dispose();
    txtAgreNombreInstructorTextController?.dispose();

    txtAgreApellidosInstructorFocusNode?.dispose();
    txtAgreApellidosInstructorTextController?.dispose();

    txtAgreEmailInstructorFocusNode?.dispose();
    txtAgreEmailInstructorTextController?.dispose();

    txtAgreIDInstructorFocusNode?.dispose();
    txtAgreIDInstructorTextController?.dispose();

    txtAgreNTelefonoInstructorFocusNode?.dispose();
    txtAgreNTelefonoInstructorTextController?.dispose();

    txtAgreATrabajoInstructorFocusNode?.dispose();
    txtAgreATrabajoInstructorTextController?.dispose();
  }
}
