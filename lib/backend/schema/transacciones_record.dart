import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransaccionesRecord extends FirestoreRecord {
  TransaccionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fechaTransaccion" field.
  DateTime? _fechaTransaccion;
  DateTime? get fechaTransaccion => _fechaTransaccion;
  bool hasFechaTransaccion() => _fechaTransaccion != null;

  // "fechaProximaTransaccion" field.
  DateTime? _fechaProximaTransaccion;
  DateTime? get fechaProximaTransaccion => _fechaProximaTransaccion;
  bool hasFechaProximaTransaccion() => _fechaProximaTransaccion != null;

  // "idTransaccion" field.
  int? _idTransaccion;
  int get idTransaccion => _idTransaccion ?? 0;
  bool hasIdTransaccion() => _idTransaccion != null;

  // "clientePago" field.
  DocumentReference? _clientePago;
  DocumentReference? get clientePago => _clientePago;
  bool hasClientePago() => _clientePago != null;

  void _initializeFields() {
    _fechaTransaccion = snapshotData['fechaTransaccion'] as DateTime?;
    _fechaProximaTransaccion =
        snapshotData['fechaProximaTransaccion'] as DateTime?;
    _idTransaccion = castToType<int>(snapshotData['idTransaccion']);
    _clientePago = snapshotData['clientePago'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transacciones');

  static Stream<TransaccionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransaccionesRecord.fromSnapshot(s));

  static Future<TransaccionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransaccionesRecord.fromSnapshot(s));

  static TransaccionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransaccionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransaccionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransaccionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransaccionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransaccionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransaccionesRecordData({
  DateTime? fechaTransaccion,
  DateTime? fechaProximaTransaccion,
  int? idTransaccion,
  DocumentReference? clientePago,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaTransaccion': fechaTransaccion,
      'fechaProximaTransaccion': fechaProximaTransaccion,
      'idTransaccion': idTransaccion,
      'clientePago': clientePago,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransaccionesRecordDocumentEquality
    implements Equality<TransaccionesRecord> {
  const TransaccionesRecordDocumentEquality();

  @override
  bool equals(TransaccionesRecord? e1, TransaccionesRecord? e2) {
    return e1?.fechaTransaccion == e2?.fechaTransaccion &&
        e1?.fechaProximaTransaccion == e2?.fechaProximaTransaccion &&
        e1?.idTransaccion == e2?.idTransaccion &&
        e1?.clientePago == e2?.clientePago;
  }

  @override
  int hash(TransaccionesRecord? e) => const ListEquality().hash([
        e?.fechaTransaccion,
        e?.fechaProximaTransaccion,
        e?.idTransaccion,
        e?.clientePago
      ]);

  @override
  bool isValidKey(Object? o) => o is TransaccionesRecord;
}
