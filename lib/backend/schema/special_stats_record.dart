import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecialStatsRecord extends FirestoreRecord {
  SpecialStatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "strength" field.
  int? _strength;
  int get strength => _strength ?? 0;
  bool hasStrength() => _strength != null;

  // "dexterity" field.
  int? _dexterity;
  int get dexterity => _dexterity ?? 0;
  bool hasDexterity() => _dexterity != null;

  // "luck" field.
  int? _luck;
  int get luck => _luck ?? 0;
  bool hasLuck() => _luck != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _strength = castToType<int>(snapshotData['strength']);
    _dexterity = castToType<int>(snapshotData['dexterity']);
    _luck = castToType<int>(snapshotData['luck']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('specialStats')
          : FirebaseFirestore.instance.collectionGroup('specialStats');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('specialStats').doc();

  static Stream<SpecialStatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpecialStatsRecord.fromSnapshot(s));

  static Future<SpecialStatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpecialStatsRecord.fromSnapshot(s));

  static SpecialStatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecialStatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecialStatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecialStatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecialStatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecialStatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecialStatsRecordData({
  int? strength,
  int? dexterity,
  int? luck,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'strength': strength,
      'dexterity': dexterity,
      'luck': luck,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecialStatsRecordDocumentEquality
    implements Equality<SpecialStatsRecord> {
  const SpecialStatsRecordDocumentEquality();

  @override
  bool equals(SpecialStatsRecord? e1, SpecialStatsRecord? e2) {
    return e1?.strength == e2?.strength &&
        e1?.dexterity == e2?.dexterity &&
        e1?.luck == e2?.luck;
  }

  @override
  int hash(SpecialStatsRecord? e) =>
      const ListEquality().hash([e?.strength, e?.dexterity, e?.luck]);

  @override
  bool isValidKey(Object? o) => o is SpecialStatsRecord;
}
