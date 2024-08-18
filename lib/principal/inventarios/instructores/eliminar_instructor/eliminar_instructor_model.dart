import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_instructor_widget.dart' show EliminarInstructorWidget;
import 'package:flutter/material.dart';

class EliminarInstructorModel
    extends FlutterFlowModel<EliminarInstructorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_EliminarInstructor widget.
  FocusNode? txtEliminarInstructorFocusNode;
  TextEditingController? txtEliminarInstructorTextController;
  String? Function(BuildContext, String?)?
      txtEliminarInstructorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarInstructorFocusNode?.dispose();
    txtEliminarInstructorTextController?.dispose();
  }
}
