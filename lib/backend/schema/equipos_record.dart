import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquiposRecord extends FirestoreRecord {
  EquiposRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreMaquina" field.
  String? _nombreMaquina;
  String get nombreMaquina => _nombreMaquina ?? '';
  bool hasNombreMaquina() => _nombreMaquina != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "categoriaMaquina" field.
  String? _categoriaMaquina;
  String get categoriaMaquina => _categoriaMaquina ?? '';
  bool hasCategoriaMaquina() => _categoriaMaquina != null;

  // "estadoMaquina" field.
  String? _estadoMaquina;
  String get estadoMaquina => _estadoMaquina ?? '';
  bool hasEstadoMaquina() => _estadoMaquina != null;

  // "fechaUltimoMantenimiento" field.
  DateTime? _fechaUltimoMantenimiento;
  DateTime? get fechaUltimoMantenimiento => _fechaUltimoMantenimiento;
  bool hasFechaUltimoMantenimiento() => _fechaUltimoMantenimiento != null;

  void _initializeFields() {
    _nombreMaquina = snapshotData['nombreMaquina'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _categoriaMaquina = snapshotData['categoriaMaquina'] as String?;
    _estadoMaquina = snapshotData['estadoMaquina'] as String?;
    _fechaUltimoMantenimiento =
        snapshotData['fechaUltimoMantenimiento'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Equipos');

  static Stream<EquiposRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquiposRecord.fromSnapshot(s));

  static Future<EquiposRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquiposRecord.fromSnapshot(s));

  static EquiposRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquiposRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquiposRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquiposRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquiposRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquiposRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquiposRecordData({
  String? nombreMaquina,
  int? cantidad,
  String? categoriaMaquina,
  String? estadoMaquina,
  DateTime? fechaUltimoMantenimiento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreMaquina': nombreMaquina,
      'cantidad': cantidad,
      'categoriaMaquina': categoriaMaquina,
      'estadoMaquina': estadoMaquina,
      'fechaUltimoMantenimiento': fechaUltimoMantenimiento,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquiposRecordDocumentEquality implements Equality<EquiposRecord> {
  const EquiposRecordDocumentEquality();

  @override
  bool equals(EquiposRecord? e1, EquiposRecord? e2) {
    return e1?.nombreMaquina == e2?.nombreMaquina &&
        e1?.cantidad == e2?.cantidad &&
        e1?.categoriaMaquina == e2?.categoriaMaquina &&
        e1?.estadoMaquina == e2?.estadoMaquina &&
        e1?.fechaUltimoMantenimiento == e2?.fechaUltimoMantenimiento;
  }

  @override
  int hash(EquiposRecord? e) => const ListEquality().hash([
        e?.nombreMaquina,
        e?.cantidad,
        e?.categoriaMaquina,
        e?.estadoMaquina,
        e?.fechaUltimoMantenimiento
      ]);

  @override
  bool isValidKey(Object? o) => o is EquiposRecord;
}
