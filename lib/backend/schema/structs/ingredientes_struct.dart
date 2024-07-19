// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IngredientesStruct extends FFFirebaseStruct {
  IngredientesStruct({
    String? nombre,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        super(firestoreUtilData);

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  static IngredientesStruct fromMap(Map<String, dynamic> data) =>
      IngredientesStruct(
        nombre: data['Nombre'] as String?,
      );

  static IngredientesStruct? maybeFromMap(dynamic data) => data is Map
      ? IngredientesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Nombre': _nombre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
      }.withoutNulls;

  static IngredientesStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngredientesStruct(
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IngredientesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngredientesStruct && nombre == other.nombre;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre]);
}

IngredientesStruct createIngredientesStruct({
  String? nombre,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngredientesStruct(
      nombre: nombre,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IngredientesStruct? updateIngredientesStruct(
  IngredientesStruct? ingredientes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingredientes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngredientesStructData(
  Map<String, dynamic> firestoreData,
  IngredientesStruct? ingredientes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingredientes == null) {
    return;
  }
  if (ingredientes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingredientes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingredientesData =
      getIngredientesFirestoreData(ingredientes, forFieldValue);
  final nestedData =
      ingredientesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingredientes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngredientesFirestoreData(
  IngredientesStruct? ingredientes, [
  bool forFieldValue = false,
]) {
  if (ingredientes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingredientes.toMap());

  // Add any Firestore field values
  ingredientes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngredientesListFirestoreData(
  List<IngredientesStruct>? ingredientess,
) =>
    ingredientess?.map((e) => getIngredientesFirestoreData(e, true)).toList() ??
    [];
