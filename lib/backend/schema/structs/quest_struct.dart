// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestStruct extends FFFirebaseStruct {
  QuestStruct({
    String? questName,
    String? questDescription,
    String? questImage,
    List<DocumentReference>? questReward,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _questName = questName,
        _questDescription = questDescription,
        _questImage = questImage,
        _questReward = questReward,
        super(firestoreUtilData);

  // "quest_name" field.
  String? _questName;
  String get questName => _questName ?? '';
  set questName(String? val) => _questName = val;
  bool hasQuestName() => _questName != null;

  // "quest_description" field.
  String? _questDescription;
  String get questDescription => _questDescription ?? '';
  set questDescription(String? val) => _questDescription = val;
  bool hasQuestDescription() => _questDescription != null;

  // "quest_image" field.
  String? _questImage;
  String get questImage => _questImage ?? '';
  set questImage(String? val) => _questImage = val;
  bool hasQuestImage() => _questImage != null;

  // "quest_reward" field.
  List<DocumentReference>? _questReward;
  List<DocumentReference> get questReward => _questReward ?? const [];
  set questReward(List<DocumentReference>? val) => _questReward = val;
  void updateQuestReward(Function(List<DocumentReference>) updateFn) =>
      updateFn(_questReward ??= []);
  bool hasQuestReward() => _questReward != null;

  static QuestStruct fromMap(Map<String, dynamic> data) => QuestStruct(
        questName: data['quest_name'] as String?,
        questDescription: data['quest_description'] as String?,
        questImage: data['quest_image'] as String?,
        questReward: getDataList(data['quest_reward']),
      );

  static QuestStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? QuestStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'quest_name': _questName,
        'quest_description': _questDescription,
        'quest_image': _questImage,
        'quest_reward': _questReward,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quest_name': serializeParam(
          _questName,
          ParamType.String,
        ),
        'quest_description': serializeParam(
          _questDescription,
          ParamType.String,
        ),
        'quest_image': serializeParam(
          _questImage,
          ParamType.String,
        ),
        'quest_reward': serializeParam(
          _questReward,
          ParamType.DocumentReference,
          true,
        ),
      }.withoutNulls;

  static QuestStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestStruct(
        questName: deserializeParam(
          data['quest_name'],
          ParamType.String,
          false,
        ),
        questDescription: deserializeParam(
          data['quest_description'],
          ParamType.String,
          false,
        ),
        questImage: deserializeParam(
          data['quest_image'],
          ParamType.String,
          false,
        ),
        questReward: deserializeParam<DocumentReference>(
          data['quest_reward'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['items'],
        ),
      );

  @override
  String toString() => 'QuestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuestStruct &&
        questName == other.questName &&
        questDescription == other.questDescription &&
        questImage == other.questImage &&
        listEquality.equals(questReward, other.questReward);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([questName, questDescription, questImage, questReward]);
}

QuestStruct createQuestStruct({
  String? questName,
  String? questDescription,
  String? questImage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestStruct(
      questName: questName,
      questDescription: questDescription,
      questImage: questImage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestStruct? updateQuestStruct(
  QuestStruct? quest, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quest
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestStructData(
  Map<String, dynamic> firestoreData,
  QuestStruct? quest,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quest == null) {
    return;
  }
  if (quest.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quest.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questData = getQuestFirestoreData(quest, forFieldValue);
  final nestedData = questData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quest.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestFirestoreData(
  QuestStruct? quest, [
  bool forFieldValue = false,
]) {
  if (quest == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quest.toMap());

  // Add any Firestore field values
  quest.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestListFirestoreData(
  List<QuestStruct>? quests,
) =>
    quests?.map((e) => getQuestFirestoreData(e, true)).toList() ?? [];
