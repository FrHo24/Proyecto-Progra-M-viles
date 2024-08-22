import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdministradoresRecord extends FirestoreRecord {
  AdministradoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreUsuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  // "emailUsuario" field.
  String? _emailUsuario;
  String get emailUsuario => _emailUsuario ?? '';
  bool hasEmailUsuario() => _emailUsuario != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "numeroTelefono" field.
  String? _numeroTelefono;
  String get numeroTelefono => _numeroTelefono ?? '';
  bool hasNumeroTelefono() => _numeroTelefono != null;

  // "cedulaUsuario" field.
  String? _cedulaUsuario;
  String get cedulaUsuario => _cedulaUsuario ?? '';
  bool hasCedulaUsuario() => _cedulaUsuario != null;

  // "apellidoUsuario" field.
  String? _apellidoUsuario;
  String get apellidoUsuario => _apellidoUsuario ?? '';
  bool hasApellidoUsuario() => _apellidoUsuario != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  void _initializeFields() {
    _nombreUsuario = snapshotData['nombreUsuario'] as String?;
    _emailUsuario = snapshotData['emailUsuario'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _numeroTelefono = snapshotData['numeroTelefono'] as String?;
    _cedulaUsuario = snapshotData['cedulaUsuario'] as String?;
    _apellidoUsuario = snapshotData['apellidoUsuario'] as String?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Administradores');

  static Stream<AdministradoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdministradoresRecord.fromSnapshot(s));

  static Future<AdministradoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdministradoresRecord.fromSnapshot(s));

  static AdministradoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdministradoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdministradoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdministradoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdministradoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdministradoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdministradoresRecordData({
  String? nombreUsuario,
  String? emailUsuario,
  DateTime? fechaCreacion,
  String? numeroTelefono,
  String? cedulaUsuario,
  String? apellidoUsuario,
  bool? isAdmin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreUsuario': nombreUsuario,
      'emailUsuario': emailUsuario,
      'fechaCreacion': fechaCreacion,
      'numeroTelefono': numeroTelefono,
      'cedulaUsuario': cedulaUsuario,
      'apellidoUsuario': apellidoUsuario,
      'isAdmin': isAdmin,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdministradoresRecordDocumentEquality
    implements Equality<AdministradoresRecord> {
  const AdministradoresRecordDocumentEquality();

  @override
  bool equals(AdministradoresRecord? e1, AdministradoresRecord? e2) {
    return e1?.nombreUsuario == e2?.nombreUsuario &&
        e1?.emailUsuario == e2?.emailUsuario &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.numeroTelefono == e2?.numeroTelefono &&
        e1?.cedulaUsuario == e2?.cedulaUsuario &&
        e1?.apellidoUsuario == e2?.apellidoUsuario &&
        e1?.isAdmin == e2?.isAdmin;
  }

  @override
  int hash(AdministradoresRecord? e) => const ListEquality().hash([
        e?.nombreUsuario,
        e?.emailUsuario,
        e?.fechaCreacion,
        e?.numeroTelefono,
        e?.cedulaUsuario,
        e?.apellidoUsuario,
        e?.isAdmin
      ]);

  @override
  bool isValidKey(Object? o) => o is AdministradoresRecord;
}
