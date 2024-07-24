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

  // "nombreInstructor" field.
  String? _nombreInstructor;
  String get nombreInstructor => _nombreInstructor ?? '';
  bool hasNombreInstructor() => _nombreInstructor != null;

  // "email_Instructor" field.
  String? _emailInstructor;
  String get emailInstructor => _emailInstructor ?? '';
  bool hasEmailInstructor() => _emailInstructor != null;

  // "telefonoInstructor" field.
  String? _telefonoInstructor;
  String get telefonoInstructor => _telefonoInstructor ?? '';
  bool hasTelefonoInstructor() => _telefonoInstructor != null;

  // "cedulaInstructor" field.
  String? _cedulaInstructor;
  String get cedulaInstructor => _cedulaInstructor ?? '';
  bool hasCedulaInstructor() => _cedulaInstructor != null;

  // "areaTrabajo_Instructor" field.
  String? _areaTrabajoInstructor;
  String get areaTrabajoInstructor => _areaTrabajoInstructor ?? '';
  bool hasAreaTrabajoInstructor() => _areaTrabajoInstructor != null;

  void _initializeFields() {
    _nombreInstructor = snapshotData['nombreInstructor'] as String?;
    _emailInstructor = snapshotData['email_Instructor'] as String?;
    _telefonoInstructor = snapshotData['telefonoInstructor'] as String?;
    _cedulaInstructor = snapshotData['cedulaInstructor'] as String?;
    _areaTrabajoInstructor = snapshotData['areaTrabajo_Instructor'] as String?;
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
  String? nombreInstructor,
  String? emailInstructor,
  String? telefonoInstructor,
  String? cedulaInstructor,
  String? areaTrabajoInstructor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreInstructor': nombreInstructor,
      'email_Instructor': emailInstructor,
      'telefonoInstructor': telefonoInstructor,
      'cedulaInstructor': cedulaInstructor,
      'areaTrabajo_Instructor': areaTrabajoInstructor,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstructoresRecordDocumentEquality
    implements Equality<InstructoresRecord> {
  const InstructoresRecordDocumentEquality();

  @override
  bool equals(InstructoresRecord? e1, InstructoresRecord? e2) {
    return e1?.nombreInstructor == e2?.nombreInstructor &&
        e1?.emailInstructor == e2?.emailInstructor &&
        e1?.telefonoInstructor == e2?.telefonoInstructor &&
        e1?.cedulaInstructor == e2?.cedulaInstructor &&
        e1?.areaTrabajoInstructor == e2?.areaTrabajoInstructor;
  }

  @override
  int hash(InstructoresRecord? e) => const ListEquality().hash([
        e?.nombreInstructor,
        e?.emailInstructor,
        e?.telefonoInstructor,
        e?.cedulaInstructor,
        e?.areaTrabajoInstructor
      ]);

  @override
  bool isValidKey(Object? o) => o is InstructoresRecord;
}
