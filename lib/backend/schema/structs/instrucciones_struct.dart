// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InstruccionesStruct extends FFFirebaseStruct {
  InstruccionesStruct({
    String? instruccion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _instruccion = instruccion,
        super(firestoreUtilData);

  // "Instruccion" field.
  String? _instruccion;
  String get instruccion => _instruccion ?? '';
  set instruccion(String? val) => _instruccion = val;

  bool hasInstruccion() => _instruccion != null;

  static InstruccionesStruct fromMap(Map<String, dynamic> data) =>
      InstruccionesStruct(
        instruccion: data['Instruccion'] as String?,
      );

  static InstruccionesStruct? maybeFromMap(dynamic data) => data is Map
      ? InstruccionesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Instruccion': _instruccion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Instruccion': serializeParam(
          _instruccion,
          ParamType.String,
        ),
      }.withoutNulls;

  static InstruccionesStruct fromSerializableMap(Map<String, dynamic> data) =>
      InstruccionesStruct(
        instruccion: deserializeParam(
          data['Instruccion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InstruccionesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InstruccionesStruct && instruccion == other.instruccion;
  }

  @override
  int get hashCode => const ListEquality().hash([instruccion]);
}

InstruccionesStruct createInstruccionesStruct({
  String? instruccion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InstruccionesStruct(
      instruccion: instruccion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InstruccionesStruct? updateInstruccionesStruct(
  InstruccionesStruct? instrucciones, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    instrucciones
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInstruccionesStructData(
  Map<String, dynamic> firestoreData,
  InstruccionesStruct? instrucciones,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (instrucciones == null) {
    return;
  }
  if (instrucciones.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && instrucciones.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final instruccionesData =
      getInstruccionesFirestoreData(instrucciones, forFieldValue);
  final nestedData =
      instruccionesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = instrucciones.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInstruccionesFirestoreData(
  InstruccionesStruct? instrucciones, [
  bool forFieldValue = false,
]) {
  if (instrucciones == null) {
    return {};
  }
  final firestoreData = mapToFirestore(instrucciones.toMap());

  // Add any Firestore field values
  instrucciones.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInstruccionesListFirestoreData(
  List<InstruccionesStruct>? instruccioness,
) =>
    instruccioness
        ?.map((e) => getInstruccionesFirestoreData(e, true))
        .toList() ??
    [];
