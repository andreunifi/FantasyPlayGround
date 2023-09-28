// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnemiesStruct extends FFFirebaseStruct {
  EnemiesStruct({
    int? health,
    DocumentReference? drop,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _health = health,
        _drop = drop,
        _name = name,
        super(firestoreUtilData);

  // "health" field.
  int? _health;
  int get health => _health ?? 0;
  set health(int? val) => _health = val;
  void incrementHealth(int amount) => _health = health + amount;
  bool hasHealth() => _health != null;

  // "drop" field.
  DocumentReference? _drop;
  DocumentReference? get drop => _drop;
  set drop(DocumentReference? val) => _drop = val;
  bool hasDrop() => _drop != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static EnemiesStruct fromMap(Map<String, dynamic> data) => EnemiesStruct(
        health: castToType<int>(data['health']),
        drop: data['drop'] as DocumentReference?,
        name: data['name'] as String?,
      );

  static EnemiesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EnemiesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'health': _health,
        'drop': _drop,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'health': serializeParam(
          _health,
          ParamType.int,
        ),
        'drop': serializeParam(
          _drop,
          ParamType.DocumentReference,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static EnemiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      EnemiesStruct(
        health: deserializeParam(
          data['health'],
          ParamType.int,
          false,
        ),
        drop: deserializeParam(
          data['drop'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['items'],
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EnemiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnemiesStruct &&
        health == other.health &&
        drop == other.drop &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([health, drop, name]);
}

EnemiesStruct createEnemiesStruct({
  int? health,
  DocumentReference? drop,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EnemiesStruct(
      health: health,
      drop: drop,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EnemiesStruct? updateEnemiesStruct(
  EnemiesStruct? enemies, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    enemies
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEnemiesStructData(
  Map<String, dynamic> firestoreData,
  EnemiesStruct? enemies,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (enemies == null) {
    return;
  }
  if (enemies.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && enemies.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final enemiesData = getEnemiesFirestoreData(enemies, forFieldValue);
  final nestedData = enemiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = enemies.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEnemiesFirestoreData(
  EnemiesStruct? enemies, [
  bool forFieldValue = false,
]) {
  if (enemies == null) {
    return {};
  }
  final firestoreData = mapToFirestore(enemies.toMap());

  // Add any Firestore field values
  enemies.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEnemiesListFirestoreData(
  List<EnemiesStruct>? enemiess,
) =>
    enemiess?.map((e) => getEnemiesFirestoreData(e, true)).toList() ?? [];
