// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LevelsStruct extends FFFirebaseStruct {
  LevelsStruct({
    String? levelName,
    List<EnemiesStruct>? enemiesRemaining,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _levelName = levelName,
        _enemiesRemaining = enemiesRemaining,
        super(firestoreUtilData);

  // "Level_name" field.
  String? _levelName;
  String get levelName => _levelName ?? '';
  set levelName(String? val) => _levelName = val;
  bool hasLevelName() => _levelName != null;

  // "enemies_remaining" field.
  List<EnemiesStruct>? _enemiesRemaining;
  List<EnemiesStruct> get enemiesRemaining => _enemiesRemaining ?? const [];
  set enemiesRemaining(List<EnemiesStruct>? val) => _enemiesRemaining = val;
  void updateEnemiesRemaining(Function(List<EnemiesStruct>) updateFn) =>
      updateFn(_enemiesRemaining ??= []);
  bool hasEnemiesRemaining() => _enemiesRemaining != null;

  static LevelsStruct fromMap(Map<String, dynamic> data) => LevelsStruct(
        levelName: data['Level_name'] as String?,
        enemiesRemaining: getStructList(
          data['enemies_remaining'],
          EnemiesStruct.fromMap,
        ),
      );

  static LevelsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LevelsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Level_name': _levelName,
        'enemies_remaining': _enemiesRemaining?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Level_name': serializeParam(
          _levelName,
          ParamType.String,
        ),
        'enemies_remaining': serializeParam(
          _enemiesRemaining,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static LevelsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LevelsStruct(
        levelName: deserializeParam(
          data['Level_name'],
          ParamType.String,
          false,
        ),
        enemiesRemaining: deserializeStructParam<EnemiesStruct>(
          data['enemies_remaining'],
          ParamType.DataStruct,
          true,
          structBuilder: EnemiesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LevelsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LevelsStruct &&
        levelName == other.levelName &&
        listEquality.equals(enemiesRemaining, other.enemiesRemaining);
  }

  @override
  int get hashCode => const ListEquality().hash([levelName, enemiesRemaining]);
}

LevelsStruct createLevelsStruct({
  String? levelName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LevelsStruct(
      levelName: levelName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LevelsStruct? updateLevelsStruct(
  LevelsStruct? levels, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    levels
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLevelsStructData(
  Map<String, dynamic> firestoreData,
  LevelsStruct? levels,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (levels == null) {
    return;
  }
  if (levels.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && levels.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final levelsData = getLevelsFirestoreData(levels, forFieldValue);
  final nestedData = levelsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = levels.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLevelsFirestoreData(
  LevelsStruct? levels, [
  bool forFieldValue = false,
]) {
  if (levels == null) {
    return {};
  }
  final firestoreData = mapToFirestore(levels.toMap());

  // Add any Firestore field values
  levels.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLevelsListFirestoreData(
  List<LevelsStruct>? levelss,
) =>
    levelss?.map((e) => getLevelsFirestoreData(e, true)).toList() ?? [];
