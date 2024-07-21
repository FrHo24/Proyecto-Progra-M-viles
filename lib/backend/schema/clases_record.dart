import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClasesRecord extends FirestoreRecord {
  ClasesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "instructor_id" field.
  int? _instructorId;
  int get instructorId => _instructorId ?? 0;
  bool hasInstructorId() => _instructorId != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "duracion" field.
  int? _duracion;
  int get duracion => _duracion ?? 0;
  bool hasDuracion() => _duracion != null;

  // "clientes" field.
  DocumentReference? _clientes;
  DocumentReference? get clientes => _clientes;
  bool hasClientes() => _clientes != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _instructorId = castToType<int>(snapshotData['instructor_id']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _duracion = castToType<int>(snapshotData['duracion']);
    _clientes = snapshotData['clientes'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Clases');

  static Stream<ClasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClasesRecord.fromSnapshot(s));

  static Future<ClasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClasesRecord.fromSnapshot(s));

  static ClasesRecord fromSnapshot(DocumentSnapshot snapshot) => ClasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClasesRecordData({
  String? nombre,
  int? instructorId,
  DateTime? fecha,
  int? duracion,
  DocumentReference? clientes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'instructor_id': instructorId,
      'fecha': fecha,
      'duracion': duracion,
      'clientes': clientes,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClasesRecordDocumentEquality implements Equality<ClasesRecord> {
  const ClasesRecordDocumentEquality();

  @override
  bool equals(ClasesRecord? e1, ClasesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.instructorId == e2?.instructorId &&
        e1?.fecha == e2?.fecha &&
        e1?.duracion == e2?.duracion &&
        e1?.clientes == e2?.clientes;
  }

  @override
  int hash(ClasesRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.instructorId, e?.fecha, e?.duracion, e?.clientes]);

  @override
  bool isValidKey(Object? o) => o is ClasesRecord;
}
