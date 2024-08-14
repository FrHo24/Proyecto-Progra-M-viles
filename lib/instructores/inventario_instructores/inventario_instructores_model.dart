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

  // State field(s) for txtNInstructor widget.
  FocusNode? txtNInstructorFocusNode;
  TextEditingController? txtNInstructorTextController;
  String? Function(BuildContext, String?)?
      txtNInstructorTextControllerValidator;
  // State field(s) for txtAInstructor widget.
  FocusNode? txtAInstructorFocusNode;
  TextEditingController? txtAInstructorTextController;
  String? Function(BuildContext, String?)?
      txtAInstructorTextControllerValidator;
  // State field(s) for txtICorreo widget.
  FocusNode? txtICorreoFocusNode;
  TextEditingController? txtICorreoTextController;
  String? Function(BuildContext, String?)? txtICorreoTextControllerValidator;
  // State field(s) for txtIID widget.
  FocusNode? txtIIDFocusNode;
  TextEditingController? txtIIDTextController;
  String? Function(BuildContext, String?)? txtIIDTextControllerValidator;
  // State field(s) for txtNTI widget.
  FocusNode? txtNTIFocusNode;
  TextEditingController? txtNTITextController;
  String? Function(BuildContext, String?)? txtNTITextControllerValidator;
  // State field(s) for txtATI widget.
  FocusNode? txtATIFocusNode;
  TextEditingController? txtATITextController;
  String? Function(BuildContext, String?)? txtATITextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    txtNInstructorFocusNode?.dispose();
    txtNInstructorTextController?.dispose();

    txtAInstructorFocusNode?.dispose();
    txtAInstructorTextController?.dispose();

    txtICorreoFocusNode?.dispose();
    txtICorreoTextController?.dispose();

    txtIIDFocusNode?.dispose();
    txtIIDTextController?.dispose();

    txtNTIFocusNode?.dispose();
    txtNTITextController?.dispose();

    txtATIFocusNode?.dispose();
    txtATITextController?.dispose();
  }
}
