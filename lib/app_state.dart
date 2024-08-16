import 'package:flutter/material.dart';

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
}
