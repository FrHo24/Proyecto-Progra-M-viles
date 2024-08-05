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

  // "fotoUsuario" field.
  String? _fotoUsuario;
  String get fotoUsuario => _fotoUsuario ?? '';
  bool hasFotoUsuario() => _fotoUsuario != null;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "apellidoUsuario" field.
  String? _apellidoUsuario;
  String get apellidoUsuario => _apellidoUsuario ?? '';
  bool hasApellidoUsuario() => _apellidoUsuario != null;

  void _initializeFields() {
    _nombreUsuario = snapshotData['nombreUsuario'] as String?;
    _emailUsuario = snapshotData['emailUsuario'] as String?;
    _fotoUsuario = snapshotData['fotoUsuario'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _numeroTelefono = snapshotData['numeroTelefono'] as String?;
    _cedulaUsuario = snapshotData['cedulaUsuario'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _apellidoUsuario = snapshotData['apellidoUsuario'] as String?;
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
  String? fotoUsuario,
  DateTime? fechaCreacion,
  String? numeroTelefono,
  String? cedulaUsuario,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? apellidoUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreUsuario': nombreUsuario,
      'emailUsuario': emailUsuario,
      'fotoUsuario': fotoUsuario,
      'fechaCreacion': fechaCreacion,
      'numeroTelefono': numeroTelefono,
      'cedulaUsuario': cedulaUsuario,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'apellidoUsuario': apellidoUsuario,
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
        e1?.fotoUsuario == e2?.fotoUsuario &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.numeroTelefono == e2?.numeroTelefono &&
        e1?.cedulaUsuario == e2?.cedulaUsuario &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.apellidoUsuario == e2?.apellidoUsuario;
  }

  @override
  int hash(AdministradoresRecord? e) => const ListEquality().hash([
        e?.nombreUsuario,
        e?.emailUsuario,
        e?.fotoUsuario,
        e?.fechaCreacion,
        e?.numeroTelefono,
        e?.cedulaUsuario,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.apellidoUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is AdministradoresRecord;
}
