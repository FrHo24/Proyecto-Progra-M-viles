import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _fechaSeleccionada =
      DateTime.fromMillisecondsSinceEpoch(1723228980000);
  DateTime? get fechaSeleccionada => _fechaSeleccionada;
  set fechaSeleccionada(DateTime? value) {
    _fechaSeleccionada = value;
  }

  DocumentReference? _proveedorSeleccionado;
  DocumentReference? get proveedorSeleccionado => _proveedorSeleccionado;
  set proveedorSeleccionado(DocumentReference? value) {
    _proveedorSeleccionado = value;
  }
}
