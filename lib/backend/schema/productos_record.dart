import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreProducto" field.
  String? _nombreProducto;
  String get nombreProducto => _nombreProducto ?? '';
  bool hasNombreProducto() => _nombreProducto != null;

  // "descripcionProducto" field.
  String? _descripcionProducto;
  String get descripcionProducto => _descripcionProducto ?? '';
  bool hasDescripcionProducto() => _descripcionProducto != null;

  // "precioProducto" field.
  double? _precioProducto;
  double get precioProducto => _precioProducto ?? 0.0;
  bool hasPrecioProducto() => _precioProducto != null;

  // "cantidadProducto" field.
  int? _cantidadProducto;
  int get cantidadProducto => _cantidadProducto ?? 0;
  bool hasCantidadProducto() => _cantidadProducto != null;

  // "categoriaProducto" field.
  String? _categoriaProducto;
  String get categoriaProducto => _categoriaProducto ?? '';
  bool hasCategoriaProducto() => _categoriaProducto != null;

  // "proveedorProducto" field.
  String? _proveedorProducto;
  String get proveedorProducto => _proveedorProducto ?? '';
  bool hasProveedorProducto() => _proveedorProducto != null;

  void _initializeFields() {
    _nombreProducto = snapshotData['nombreProducto'] as String?;
    _descripcionProducto = snapshotData['descripcionProducto'] as String?;
    _precioProducto = castToType<double>(snapshotData['precioProducto']);
    _cantidadProducto = castToType<int>(snapshotData['cantidadProducto']);
    _categoriaProducto = snapshotData['categoriaProducto'] as String?;
    _proveedorProducto = snapshotData['proveedorProducto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? nombreProducto,
  String? descripcionProducto,
  double? precioProducto,
  int? cantidadProducto,
  String? categoriaProducto,
  String? proveedorProducto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreProducto': nombreProducto,
      'descripcionProducto': descripcionProducto,
      'precioProducto': precioProducto,
      'cantidadProducto': cantidadProducto,
      'categoriaProducto': categoriaProducto,
      'proveedorProducto': proveedorProducto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.nombreProducto == e2?.nombreProducto &&
        e1?.descripcionProducto == e2?.descripcionProducto &&
        e1?.precioProducto == e2?.precioProducto &&
        e1?.cantidadProducto == e2?.cantidadProducto &&
        e1?.categoriaProducto == e2?.categoriaProducto &&
        e1?.proveedorProducto == e2?.proveedorProducto;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.nombreProducto,
        e?.descripcionProducto,
        e?.precioProducto,
        e?.cantidadProducto,
        e?.categoriaProducto,
        e?.proveedorProducto
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
