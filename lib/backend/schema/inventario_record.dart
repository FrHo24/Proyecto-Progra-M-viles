import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioRecord extends FirestoreRecord {
  InventarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "producto_id" field.
  DocumentReference? _productoId;
  DocumentReference? get productoId => _productoId;
  bool hasProductoId() => _productoId != null;

  // "cantidad_actual" field.
  int? _cantidadActual;
  int get cantidadActual => _cantidadActual ?? 0;
  bool hasCantidadActual() => _cantidadActual != null;

  // "ultima_actualizacion" field.
  DateTime? _ultimaActualizacion;
  DateTime? get ultimaActualizacion => _ultimaActualizacion;
  bool hasUltimaActualizacion() => _ultimaActualizacion != null;

  void _initializeFields() {
    _productoId = snapshotData['producto_id'] as DocumentReference?;
    _cantidadActual = castToType<int>(snapshotData['cantidad_actual']);
    _ultimaActualizacion = snapshotData['ultima_actualizacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventario');

  static Stream<InventarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioRecord.fromSnapshot(s));

  static Future<InventarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventarioRecord.fromSnapshot(s));

  static InventarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioRecordData({
  DocumentReference? productoId,
  int? cantidadActual,
  DateTime? ultimaActualizacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'producto_id': productoId,
      'cantidad_actual': cantidadActual,
      'ultima_actualizacion': ultimaActualizacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioRecordDocumentEquality implements Equality<InventarioRecord> {
  const InventarioRecordDocumentEquality();

  @override
  bool equals(InventarioRecord? e1, InventarioRecord? e2) {
    return e1?.productoId == e2?.productoId &&
        e1?.cantidadActual == e2?.cantidadActual &&
        e1?.ultimaActualizacion == e2?.ultimaActualizacion;
  }

  @override
  int hash(InventarioRecord? e) => const ListEquality()
      .hash([e?.productoId, e?.cantidadActual, e?.ultimaActualizacion]);

  @override
  bool isValidKey(Object? o) => o is InventarioRecord;
}
