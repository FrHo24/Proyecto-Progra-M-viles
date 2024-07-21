import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstructoresRecord extends FirestoreRecord {
  InstructoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "especiaiidad" field.
  String? _especiaiidad;
  String get especiaiidad => _especiaiidad ?? '';
  bool hasEspeciaiidad() => _especiaiidad != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefono" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "disponibilidad" field.
  bool? _disponibilidad;
  bool get disponibilidad => _disponibilidad ?? false;
  bool hasDisponibilidad() => _disponibilidad != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _especiaiidad = snapshotData['especiaiidad'] as String?;
    _email = snapshotData['email'] as String?;
    _telefono = castToType<int>(snapshotData['telefono']);
    _disponibilidad = snapshotData['disponibilidad'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Instructores');

  static Stream<InstructoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InstructoresRecord.fromSnapshot(s));

  static Future<InstructoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InstructoresRecord.fromSnapshot(s));

  static InstructoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InstructoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InstructoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InstructoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InstructoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InstructoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInstructoresRecordData({
  String? nombre,
  String? especiaiidad,
  String? email,
  int? telefono,
  bool? disponibilidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'especiaiidad': especiaiidad,
      'email': email,
      'telefono': telefono,
      'disponibilidad': disponibilidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstructoresRecordDocumentEquality
    implements Equality<InstructoresRecord> {
  const InstructoresRecordDocumentEquality();

  @override
  bool equals(InstructoresRecord? e1, InstructoresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.especiaiidad == e2?.especiaiidad &&
        e1?.email == e2?.email &&
        e1?.telefono == e2?.telefono &&
        e1?.disponibilidad == e2?.disponibilidad;
  }

  @override
  int hash(InstructoresRecord? e) => const ListEquality().hash(
      [e?.nombre, e?.especiaiidad, e?.email, e?.telefono, e?.disponibilidad]);

  @override
  bool isValidKey(Object? o) => o is InstructoresRecord;
}
