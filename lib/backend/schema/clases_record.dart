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

  // "nombreClase" field.
  String? _nombreClase;
  String get nombreClase => _nombreClase ?? '';
  bool hasNombreClase() => _nombreClase != null;

  // "descripcionClase" field.
  String? _descripcionClase;
  String get descripcionClase => _descripcionClase ?? '';
  bool hasDescripcionClase() => _descripcionClase != null;

  // "cantidadParticipantes" field.
  int? _cantidadParticipantes;
  int get cantidadParticipantes => _cantidadParticipantes ?? 0;
  bool hasCantidadParticipantes() => _cantidadParticipantes != null;

  // "instructorAsignado" field.
  String? _instructorAsignado;
  String get instructorAsignado => _instructorAsignado ?? '';
  bool hasInstructorAsignado() => _instructorAsignado != null;

  void _initializeFields() {
    _nombreClase = snapshotData['nombreClase'] as String?;
    _descripcionClase = snapshotData['descripcionClase'] as String?;
    _cantidadParticipantes =
        castToType<int>(snapshotData['cantidadParticipantes']);
    _instructorAsignado = snapshotData['instructorAsignado'] as String?;
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
  String? nombreClase,
  String? descripcionClase,
  int? cantidadParticipantes,
  String? instructorAsignado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreClase': nombreClase,
      'descripcionClase': descripcionClase,
      'cantidadParticipantes': cantidadParticipantes,
      'instructorAsignado': instructorAsignado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClasesRecordDocumentEquality implements Equality<ClasesRecord> {
  const ClasesRecordDocumentEquality();

  @override
  bool equals(ClasesRecord? e1, ClasesRecord? e2) {
    return e1?.nombreClase == e2?.nombreClase &&
        e1?.descripcionClase == e2?.descripcionClase &&
        e1?.cantidadParticipantes == e2?.cantidadParticipantes &&
        e1?.instructorAsignado == e2?.instructorAsignado;
  }

  @override
  int hash(ClasesRecord? e) => const ListEquality().hash([
        e?.nombreClase,
        e?.descripcionClase,
        e?.cantidadParticipantes,
        e?.instructorAsignado
      ]);

  @override
  bool isValidKey(Object? o) => o is ClasesRecord;
}
