import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'asistencia_widget.dart' show AsistenciaWidget;
import 'package:flutter/material.dart';

class AsistenciaModel extends FlutterFlowModel<AsistenciaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxListTile widget.
  Map<ClientesRecord, bool> checkboxListTileValueMap = {};
  List<ClientesRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
