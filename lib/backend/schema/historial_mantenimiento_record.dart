import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialMantenimientoRecord extends FirestoreRecord {
  HistorialMantenimientoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "equipo_id" field.
  DocumentReference? _equipoId;
  DocumentReference? get equipoId => _equipoId;
  bool hasEquipoId() => _equipoId != null;

  // "fecha_mantenimiento" field.
  DateTime? _fechaMantenimiento;
  DateTime? get fechaMantenimiento => _fechaMantenimiento;
  bool hasFechaMantenimiento() => _fechaMantenimiento != null;

  // "descripcion_mantenimiento" field.
  String? _descripcionMantenimiento;
  String get descripcionMantenimiento => _descripcionMantenimiento ?? '';
  bool hasDescripcionMantenimiento() => _descripcionMantenimiento != null;

  // "tecnico_responsable" field.
  String? _tecnicoResponsable;
  String get tecnicoResponsable => _tecnicoResponsable ?? '';
  bool hasTecnicoResponsable() => _tecnicoResponsable != null;

  void _initializeFields() {
    _equipoId = snapshotData['equipo_id'] as DocumentReference?;
    _fechaMantenimiento = snapshotData['fecha_mantenimiento'] as DateTime?;
    _descripcionMantenimiento =
        snapshotData['descripcion_mantenimiento'] as String?;
    _tecnicoResponsable = snapshotData['tecnico_responsable'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HistorialMantenimiento');

  static Stream<HistorialMantenimientoRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialMantenimientoRecord.fromSnapshot(s));

  static Future<HistorialMantenimientoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistorialMantenimientoRecord.fromSnapshot(s));

  static HistorialMantenimientoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialMantenimientoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialMantenimientoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialMantenimientoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialMantenimientoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialMantenimientoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialMantenimientoRecordData({
  DocumentReference? equipoId,
  DateTime? fechaMantenimiento,
  String? descripcionMantenimiento,
  String? tecnicoResponsable,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'equipo_id': equipoId,
      'fecha_mantenimiento': fechaMantenimiento,
      'descripcion_mantenimiento': descripcionMantenimiento,
      'tecnico_responsable': tecnicoResponsable,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialMantenimientoRecordDocumentEquality
    implements Equality<HistorialMantenimientoRecord> {
  const HistorialMantenimientoRecordDocumentEquality();

  @override
  bool equals(
      HistorialMantenimientoRecord? e1, HistorialMantenimientoRecord? e2) {
    return e1?.equipoId == e2?.equipoId &&
        e1?.fechaMantenimiento == e2?.fechaMantenimiento &&
        e1?.descripcionMantenimiento == e2?.descripcionMantenimiento &&
        e1?.tecnicoResponsable == e2?.tecnicoResponsable;
  }

  @override
  int hash(HistorialMantenimientoRecord? e) => const ListEquality().hash([
        e?.equipoId,
        e?.fechaMantenimiento,
        e?.descripcionMantenimiento,
        e?.tecnicoResponsable
      ]);

  @override
  bool isValidKey(Object? o) => o is HistorialMantenimientoRecord;
}
