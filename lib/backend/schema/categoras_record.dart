import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategorasRecord extends FirestoreRecord {
  CategorasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tipo = snapshotData['tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categoras');

  static Stream<CategorasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategorasRecord.fromSnapshot(s));

  static Future<CategorasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategorasRecord.fromSnapshot(s));

  static CategorasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategorasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategorasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategorasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategorasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategorasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategorasRecordData({
  String? nombre,
  String? descripcion,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategorasRecordDocumentEquality implements Equality<CategorasRecord> {
  const CategorasRecordDocumentEquality();

  @override
  bool equals(CategorasRecord? e1, CategorasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(CategorasRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcion, e?.tipo]);

  @override
  bool isValidKey(Object? o) => o is CategorasRecord;
}
