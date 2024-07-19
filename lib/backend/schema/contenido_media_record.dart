import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContenidoMediaRecord extends FirestoreRecord {
  ContenidoMediaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreVideo" field.
  String? _nombreVideo;
  String get nombreVideo => _nombreVideo ?? '';
  bool hasNombreVideo() => _nombreVideo != null;

  // "duracionVideo" field.
  String? _duracionVideo;
  String get duracionVideo => _duracionVideo ?? '';
  bool hasDuracionVideo() => _duracionVideo != null;

  // "categoriaVideo" field.
  String? _categoriaVideo;
  String get categoriaVideo => _categoriaVideo ?? '';
  bool hasCategoriaVideo() => _categoriaVideo != null;

  // "areasEnfoque" field.
  String? _areasEnfoque;
  String get areasEnfoque => _areasEnfoque ?? '';
  bool hasAreasEnfoque() => _areasEnfoque != null;

  // "descripcionVideo" field.
  String? _descripcionVideo;
  String get descripcionVideo => _descripcionVideo ?? '';
  bool hasDescripcionVideo() => _descripcionVideo != null;

  // "fechaAdicion" field.
  DateTime? _fechaAdicion;
  DateTime? get fechaAdicion => _fechaAdicion;
  bool hasFechaAdicion() => _fechaAdicion != null;

  // "enlaceVideo" field.
  String? _enlaceVideo;
  String get enlaceVideo => _enlaceVideo ?? '';
  bool hasEnlaceVideo() => _enlaceVideo != null;

  // "imagenPortada" field.
  String? _imagenPortada;
  String get imagenPortada => _imagenPortada ?? '';
  bool hasImagenPortada() => _imagenPortada != null;

  void _initializeFields() {
    _nombreVideo = snapshotData['nombreVideo'] as String?;
    _duracionVideo = snapshotData['duracionVideo'] as String?;
    _categoriaVideo = snapshotData['categoriaVideo'] as String?;
    _areasEnfoque = snapshotData['areasEnfoque'] as String?;
    _descripcionVideo = snapshotData['descripcionVideo'] as String?;
    _fechaAdicion = snapshotData['fechaAdicion'] as DateTime?;
    _enlaceVideo = snapshotData['enlaceVideo'] as String?;
    _imagenPortada = snapshotData['imagenPortada'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ContenidoMedia');

  static Stream<ContenidoMediaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContenidoMediaRecord.fromSnapshot(s));

  static Future<ContenidoMediaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContenidoMediaRecord.fromSnapshot(s));

  static ContenidoMediaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContenidoMediaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContenidoMediaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContenidoMediaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContenidoMediaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContenidoMediaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContenidoMediaRecordData({
  String? nombreVideo,
  String? duracionVideo,
  String? categoriaVideo,
  String? areasEnfoque,
  String? descripcionVideo,
  DateTime? fechaAdicion,
  String? enlaceVideo,
  String? imagenPortada,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreVideo': nombreVideo,
      'duracionVideo': duracionVideo,
      'categoriaVideo': categoriaVideo,
      'areasEnfoque': areasEnfoque,
      'descripcionVideo': descripcionVideo,
      'fechaAdicion': fechaAdicion,
      'enlaceVideo': enlaceVideo,
      'imagenPortada': imagenPortada,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContenidoMediaRecordDocumentEquality
    implements Equality<ContenidoMediaRecord> {
  const ContenidoMediaRecordDocumentEquality();

  @override
  bool equals(ContenidoMediaRecord? e1, ContenidoMediaRecord? e2) {
    return e1?.nombreVideo == e2?.nombreVideo &&
        e1?.duracionVideo == e2?.duracionVideo &&
        e1?.categoriaVideo == e2?.categoriaVideo &&
        e1?.areasEnfoque == e2?.areasEnfoque &&
        e1?.descripcionVideo == e2?.descripcionVideo &&
        e1?.fechaAdicion == e2?.fechaAdicion &&
        e1?.enlaceVideo == e2?.enlaceVideo &&
        e1?.imagenPortada == e2?.imagenPortada;
  }

  @override
  int hash(ContenidoMediaRecord? e) => const ListEquality().hash([
        e?.nombreVideo,
        e?.duracionVideo,
        e?.categoriaVideo,
        e?.areasEnfoque,
        e?.descripcionVideo,
        e?.fechaAdicion,
        e?.enlaceVideo,
        e?.imagenPortada
      ]);

  @override
  bool isValidKey(Object? o) => o is ContenidoMediaRecord;
}
