// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    List<ItemStruct>? inventory,
    double? atkStat,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _inventory = inventory,
        _atkStat = atkStat,
        super(firestoreUtilData);

  // "inventory" field.
  List<ItemStruct>? _inventory;
  List<ItemStruct> get inventory => _inventory ?? const [];
  set inventory(List<ItemStruct>? val) => _inventory = val;
  void updateInventory(Function(List<ItemStruct>) updateFn) =>
      updateFn(_inventory ??= []);
  bool hasInventory() => _inventory != null;

  // "atk_stat" field.
  double? _atkStat;
  double get atkStat => _atkStat ?? 0.0;
  set atkStat(double? val) => _atkStat = val;
  void incrementAtkStat(double amount) => _atkStat = atkStat + amount;
  bool hasAtkStat() => _atkStat != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        inventory: getStructList(
          data['inventory'],
          ItemStruct.fromMap,
        ),
        atkStat: castToType<double>(data['atk_stat']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'inventory': _inventory?.map((e) => e.toMap()).toList(),
        'atk_stat': _atkStat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'inventory': serializeParam(
          _inventory,
          ParamType.DataStruct,
          true,
        ),
        'atk_stat': serializeParam(
          _atkStat,
          ParamType.double,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        inventory: deserializeStructParam<ItemStruct>(
          data['inventory'],
          ParamType.DataStruct,
          true,
          structBuilder: ItemStruct.fromSerializableMap,
        ),
        atkStat: deserializeParam(
          data['atk_stat'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        listEquality.equals(inventory, other.inventory) &&
        atkStat == other.atkStat;
  }

  @override
  int get hashCode => const ListEquality().hash([inventory, atkStat]);
}

UserStruct createUserStruct({
  double? atkStat,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      atkStat: atkStat,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
