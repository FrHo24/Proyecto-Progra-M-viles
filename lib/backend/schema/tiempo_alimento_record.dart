import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TiempoAlimentoRecord extends FirestoreRecord {
  TiempoAlimentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tiempo_Alimento');

  static Stream<TiempoAlimentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TiempoAlimentoRecord.fromSnapshot(s));

  static Future<TiempoAlimentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TiempoAlimentoRecord.fromSnapshot(s));

  static TiempoAlimentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TiempoAlimentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TiempoAlimentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TiempoAlimentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TiempoAlimentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TiempoAlimentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTiempoAlimentoRecordData({
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class TiempoAlimentoRecordDocumentEquality
    implements Equality<TiempoAlimentoRecord> {
  const TiempoAlimentoRecordDocumentEquality();

  @override
  bool equals(TiempoAlimentoRecord? e1, TiempoAlimentoRecord? e2) {
    return e1?.nombre == e2?.nombre;
  }

  @override
  int hash(TiempoAlimentoRecord? e) => const ListEquality().hash([e?.nombre]);

  @override
  bool isValidKey(Object? o) => o is TiempoAlimentoRecord;
}
