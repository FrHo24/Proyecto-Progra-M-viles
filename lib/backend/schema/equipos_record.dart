import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquiposRecord extends FirestoreRecord {
  EquiposRecord._(
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

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "ultima_mantenimiento" field.
  DateTime? _ultimaMantenimiento;
  DateTime? get ultimaMantenimiento => _ultimaMantenimiento;
  bool hasUltimaMantenimiento() => _ultimaMantenimiento != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _estado = snapshotData['estado'] as String?;
    _ultimaMantenimiento = snapshotData['ultima_mantenimiento'] as DateTime?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Equipos');

  static Stream<EquiposRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquiposRecord.fromSnapshot(s));

  static Future<EquiposRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquiposRecord.fromSnapshot(s));

  static EquiposRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquiposRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquiposRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquiposRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquiposRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquiposRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquiposRecordData({
  String? nombre,
  String? descripcion,
  String? tipo,
  String? ubicacion,
  String? estado,
  DateTime? ultimaMantenimiento,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'tipo': tipo,
      'ubicacion': ubicacion,
      'estado': estado,
      'ultima_mantenimiento': ultimaMantenimiento,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquiposRecordDocumentEquality implements Equality<EquiposRecord> {
  const EquiposRecordDocumentEquality();

  @override
  bool equals(EquiposRecord? e1, EquiposRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tipo == e2?.tipo &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.estado == e2?.estado &&
        e1?.ultimaMantenimiento == e2?.ultimaMantenimiento &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(EquiposRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.tipo,
        e?.ubicacion,
        e?.estado,
        e?.ultimaMantenimiento,
        e?.cantidad
      ]);

  @override
  bool isValidKey(Object? o) => o is EquiposRecord;
}
