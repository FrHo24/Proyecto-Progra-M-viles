import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservasRecord extends FirestoreRecord {
  ReservasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cliente_id" field.
  DocumentReference? _clienteId;
  DocumentReference? get clienteId => _clienteId;
  bool hasClienteId() => _clienteId != null;

  // "equipo_id" field.
  DocumentReference? _equipoId;
  DocumentReference? get equipoId => _equipoId;
  bool hasEquipoId() => _equipoId != null;

  // "clase_id" field.
  DocumentReference? _claseId;
  DocumentReference? get claseId => _claseId;
  bool hasClaseId() => _claseId != null;

  // "fecha_reserva" field.
  DateTime? _fechaReserva;
  DateTime? get fechaReserva => _fechaReserva;
  bool hasFechaReserva() => _fechaReserva != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _clienteId = snapshotData['cliente_id'] as DocumentReference?;
    _equipoId = snapshotData['equipo_id'] as DocumentReference?;
    _claseId = snapshotData['clase_id'] as DocumentReference?;
    _fechaReserva = snapshotData['fecha_reserva'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservas');

  static Stream<ReservasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservasRecord.fromSnapshot(s));

  static Future<ReservasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservasRecord.fromSnapshot(s));

  static ReservasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservasRecordData({
  DocumentReference? clienteId,
  DocumentReference? equipoId,
  DocumentReference? claseId,
  DateTime? fechaReserva,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cliente_id': clienteId,
      'equipo_id': equipoId,
      'clase_id': claseId,
      'fecha_reserva': fechaReserva,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservasRecordDocumentEquality implements Equality<ReservasRecord> {
  const ReservasRecordDocumentEquality();

  @override
  bool equals(ReservasRecord? e1, ReservasRecord? e2) {
    return e1?.clienteId == e2?.clienteId &&
        e1?.equipoId == e2?.equipoId &&
        e1?.claseId == e2?.claseId &&
        e1?.fechaReserva == e2?.fechaReserva &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(ReservasRecord? e) => const ListEquality().hash(
      [e?.clienteId, e?.equipoId, e?.claseId, e?.fechaReserva, e?.estado]);

  @override
  bool isValidKey(Object? o) => o is ReservasRecord;
}
