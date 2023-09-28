// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemStruct extends FFFirebaseStruct {
  ItemStruct({
    String? name,
    String? description,
    String? image,
    int? atkBonus,
    int? luckNonus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _image = image,
        _atkBonus = atkBonus,
        _luckNonus = luckNonus,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "atk_bonus" field.
  int? _atkBonus;
  int get atkBonus => _atkBonus ?? 0;
  set atkBonus(int? val) => _atkBonus = val;
  void incrementAtkBonus(int amount) => _atkBonus = atkBonus + amount;
  bool hasAtkBonus() => _atkBonus != null;

  // "luck_nonus" field.
  int? _luckNonus;
  int get luckNonus => _luckNonus ?? 0;
  set luckNonus(int? val) => _luckNonus = val;
  void incrementLuckNonus(int amount) => _luckNonus = luckNonus + amount;
  bool hasLuckNonus() => _luckNonus != null;

  static ItemStruct fromMap(Map<String, dynamic> data) => ItemStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
        atkBonus: castToType<int>(data['atk_bonus']),
        luckNonus: castToType<int>(data['luck_nonus']),
      );

  static ItemStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ItemStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'image': _image,
        'atk_bonus': _atkBonus,
        'luck_nonus': _luckNonus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'atk_bonus': serializeParam(
          _atkBonus,
          ParamType.int,
        ),
        'luck_nonus': serializeParam(
          _luckNonus,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        atkBonus: deserializeParam(
          data['atk_bonus'],
          ParamType.int,
          false,
        ),
        luckNonus: deserializeParam(
          data['luck_nonus'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemStruct &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        atkBonus == other.atkBonus &&
        luckNonus == other.luckNonus;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, description, image, atkBonus, luckNonus]);
}

ItemStruct createItemStruct({
  String? name,
  String? description,
  String? image,
  int? atkBonus,
  int? luckNonus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemStruct(
      name: name,
      description: description,
      image: image,
      atkBonus: atkBonus,
      luckNonus: luckNonus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ItemStruct? updateItemStruct(
  ItemStruct? item, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    item
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addItemStructData(
  Map<String, dynamic> firestoreData,
  ItemStruct? item,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (item == null) {
    return;
  }
  if (item.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && item.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemData = getItemFirestoreData(item, forFieldValue);
  final nestedData = itemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = item.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getItemFirestoreData(
  ItemStruct? item, [
  bool forFieldValue = false,
]) {
  if (item == null) {
    return {};
  }
  final firestoreData = mapToFirestore(item.toMap());

  // Add any Firestore field values
  item.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemListFirestoreData(
  List<ItemStruct>? items,
) =>
    items?.map((e) => getItemFirestoreData(e, true)).toList() ?? [];
