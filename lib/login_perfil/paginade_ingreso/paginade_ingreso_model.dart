import '/flutter_flow/flutter_flow_util.dart';
import 'paginade_ingreso_widget.dart' show PaginadeIngresoWidget;
import 'package:flutter/material.dart';

class PaginadeIngresoModel extends FlutterFlowModel<PaginadeIngresoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
