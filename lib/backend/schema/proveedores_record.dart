import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProveedoresRecord extends FirestoreRecord {
  ProveedoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreProveedor" field.
  String? _nombreProveedor;
  String get nombreProveedor => _nombreProveedor ?? '';
  bool hasNombreProveedor() => _nombreProveedor != null;

  // "telefonoProveedor" field.
  String? _telefonoProveedor;
  String get telefonoProveedor => _telefonoProveedor ?? '';
  bool hasTelefonoProveedor() => _telefonoProveedor != null;

  // "emailProveedor" field.
  String? _emailProveedor;
  String get emailProveedor => _emailProveedor ?? '';
  bool hasEmailProveedor() => _emailProveedor != null;

  void _initializeFields() {
    _nombreProveedor = snapshotData['nombreProveedor'] as String?;
    _telefonoProveedor = snapshotData['telefonoProveedor'] as String?;
    _emailProveedor = snapshotData['emailProveedor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Proveedores');

  static Stream<ProveedoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProveedoresRecord.fromSnapshot(s));

  static Future<ProveedoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProveedoresRecord.fromSnapshot(s));

  static ProveedoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProveedoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProveedoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProveedoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProveedoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProveedoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProveedoresRecordData({
  String? nombreProveedor,
  String? telefonoProveedor,
  String? emailProveedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreProveedor': nombreProveedor,
      'telefonoProveedor': telefonoProveedor,
      'emailProveedor': emailProveedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProveedoresRecordDocumentEquality implements Equality<ProveedoresRecord> {
  const ProveedoresRecordDocumentEquality();

  @override
  bool equals(ProveedoresRecord? e1, ProveedoresRecord? e2) {
    return e1?.nombreProveedor == e2?.nombreProveedor &&
        e1?.telefonoProveedor == e2?.telefonoProveedor &&
        e1?.emailProveedor == e2?.emailProveedor;
  }

  @override
  int hash(ProveedoresRecord? e) => const ListEquality()
      .hash([e?.nombreProveedor, e?.telefonoProveedor, e?.emailProveedor]);

  @override
  bool isValidKey(Object? o) => o is ProveedoresRecord;
}
