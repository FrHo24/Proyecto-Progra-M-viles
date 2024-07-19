import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaAlimentacionRecord extends FirestoreRecord {
  CategoriaAlimentacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categoria_Alimentacion');

  static Stream<CategoriaAlimentacionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriaAlimentacionRecord.fromSnapshot(s));

  static Future<CategoriaAlimentacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CategoriaAlimentacionRecord.fromSnapshot(s));

  static CategoriaAlimentacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriaAlimentacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriaAlimentacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriaAlimentacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriaAlimentacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriaAlimentacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriaAlimentacionRecordData({
  String? nombre,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriaAlimentacionRecordDocumentEquality
    implements Equality<CategoriaAlimentacionRecord> {
  const CategoriaAlimentacionRecordDocumentEquality();

  @override
  bool equals(
      CategoriaAlimentacionRecord? e1, CategoriaAlimentacionRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(CategoriaAlimentacionRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is CategoriaAlimentacionRecord;
}
