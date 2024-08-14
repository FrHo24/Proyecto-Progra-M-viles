import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarioReservasRecord extends FirestoreRecord {
  CalendarioReservasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "instructor" field.
  DocumentReference? _instructor;
  DocumentReference? get instructor => _instructor;
  bool hasInstructor() => _instructor != null;

  // "clase" field.
  DocumentReference? _clase;
  DocumentReference? get clase => _clase;
  bool hasClase() => _clase != null;

  // "clientes" field.
  int? _clientes;
  int get clientes => _clientes ?? 0;
  bool hasClientes() => _clientes != null;

  // "hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _instructor = snapshotData['instructor'] as DocumentReference?;
    _clase = snapshotData['clase'] as DocumentReference?;
    _clientes = castToType<int>(snapshotData['clientes']);
    _hora = snapshotData['hora'] as DateTime?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calendarioReservas');

  static Stream<CalendarioReservasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalendarioReservasRecord.fromSnapshot(s));

  static Future<CalendarioReservasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CalendarioReservasRecord.fromSnapshot(s));

  static CalendarioReservasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalendarioReservasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalendarioReservasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalendarioReservasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalendarioReservasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalendarioReservasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalendarioReservasRecordData({
  DocumentReference? instructor,
  DocumentReference? clase,
  int? clientes,
  DateTime? hora,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'instructor': instructor,
      'clase': clase,
      'clientes': clientes,
      'hora': hora,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalendarioReservasRecordDocumentEquality
    implements Equality<CalendarioReservasRecord> {
  const CalendarioReservasRecordDocumentEquality();

  @override
  bool equals(CalendarioReservasRecord? e1, CalendarioReservasRecord? e2) {
    return e1?.instructor == e2?.instructor &&
        e1?.clase == e2?.clase &&
        e1?.clientes == e2?.clientes &&
        e1?.hora == e2?.hora &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(CalendarioReservasRecord? e) => const ListEquality()
      .hash([e?.instructor, e?.clase, e?.clientes, e?.hora, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is CalendarioReservasRecord;
}
