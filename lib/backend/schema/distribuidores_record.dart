import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DistribuidoresRecord extends FirestoreRecord {
  DistribuidoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "contacto" field.
  String? _contacto;
  String get contacto => _contacto ?? '';
  bool hasContacto() => _contacto != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefono" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _contacto = snapshotData['contacto'] as String?;
    _email = snapshotData['email'] as String?;
    _telefono = castToType<int>(snapshotData['telefono']);
    _direccion = snapshotData['direccion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Distribuidores');

  static Stream<DistribuidoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DistribuidoresRecord.fromSnapshot(s));

  static Future<DistribuidoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DistribuidoresRecord.fromSnapshot(s));

  static DistribuidoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DistribuidoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DistribuidoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DistribuidoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DistribuidoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DistribuidoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDistribuidoresRecordData({
  String? nombre,
  String? contacto,
  String? email,
  int? telefono,
  String? direccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'contacto': contacto,
      'email': email,
      'telefono': telefono,
      'direccion': direccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class DistribuidoresRecordDocumentEquality
    implements Equality<DistribuidoresRecord> {
  const DistribuidoresRecordDocumentEquality();

  @override
  bool equals(DistribuidoresRecord? e1, DistribuidoresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.contacto == e2?.contacto &&
        e1?.email == e2?.email &&
        e1?.telefono == e2?.telefono &&
        e1?.direccion == e2?.direccion;
  }

  @override
  int hash(DistribuidoresRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.contacto, e?.email, e?.telefono, e?.direccion]);

  @override
  bool isValidKey(Object? o) => o is DistribuidoresRecord;
}
