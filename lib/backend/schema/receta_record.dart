import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecetaRecord extends FirestoreRecord {
  RecetaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Tiempo_Alimento" field.
  DocumentReference? _tiempoAlimento;
  DocumentReference? get tiempoAlimento => _tiempoAlimento;
  bool hasTiempoAlimento() => _tiempoAlimento != null;

  // "Categoria_Alimentacion" field.
  DocumentReference? _categoriaAlimentacion;
  DocumentReference? get categoriaAlimentacion => _categoriaAlimentacion;
  bool hasCategoriaAlimentacion() => _categoriaAlimentacion != null;

  // "Fecha_Creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Instruccion" field.
  List<InstruccionesStruct>? _instruccion;
  List<InstruccionesStruct> get instruccion => _instruccion ?? const [];
  bool hasInstruccion() => _instruccion != null;

  // "Ingrediente" field.
  List<String>? _ingrediente;
  List<String> get ingrediente => _ingrediente ?? const [];
  bool hasIngrediente() => _ingrediente != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _tiempoAlimento = snapshotData['Tiempo_Alimento'] as DocumentReference?;
    _categoriaAlimentacion =
        snapshotData['Categoria_Alimentacion'] as DocumentReference?;
    _fechaCreacion = snapshotData['Fecha_Creacion'] as DateTime?;
    _imagen = snapshotData['Imagen'] as String?;
    _instruccion = getStructList(
      snapshotData['Instruccion'],
      InstruccionesStruct.fromMap,
    );
    _ingrediente = getDataList(snapshotData['Ingrediente']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Receta');

  static Stream<RecetaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecetaRecord.fromSnapshot(s));

  static Future<RecetaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecetaRecord.fromSnapshot(s));

  static RecetaRecord fromSnapshot(DocumentSnapshot snapshot) => RecetaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecetaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecetaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecetaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecetaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecetaRecordData({
  String? nombre,
  DocumentReference? tiempoAlimento,
  DocumentReference? categoriaAlimentacion,
  DateTime? fechaCreacion,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Tiempo_Alimento': tiempoAlimento,
      'Categoria_Alimentacion': categoriaAlimentacion,
      'Fecha_Creacion': fechaCreacion,
      'Imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecetaRecordDocumentEquality implements Equality<RecetaRecord> {
  const RecetaRecordDocumentEquality();

  @override
  bool equals(RecetaRecord? e1, RecetaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.tiempoAlimento == e2?.tiempoAlimento &&
        e1?.categoriaAlimentacion == e2?.categoriaAlimentacion &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.imagen == e2?.imagen &&
        listEquality.equals(e1?.instruccion, e2?.instruccion) &&
        listEquality.equals(e1?.ingrediente, e2?.ingrediente);
  }

  @override
  int hash(RecetaRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.tiempoAlimento,
        e?.categoriaAlimentacion,
        e?.fechaCreacion,
        e?.imagen,
        e?.instruccion,
        e?.ingrediente
      ]);

  @override
  bool isValidKey(Object? o) => o is RecetaRecord;
}
