import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnemiesRecord extends FirestoreRecord {
  EnemiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "health" field.
  int? _health;
  int get health => _health ?? 0;
  bool hasHealth() => _health != null;

  // "referencedItem" field.
  DocumentReference? _referencedItem;
  DocumentReference? get referencedItem => _referencedItem;
  bool hasReferencedItem() => _referencedItem != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _health = castToType<int>(snapshotData['health']);
    _referencedItem = snapshotData['referencedItem'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enemies');

  static Stream<EnemiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnemiesRecord.fromSnapshot(s));

  static Future<EnemiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnemiesRecord.fromSnapshot(s));

  static EnemiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnemiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnemiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnemiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnemiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnemiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnemiesRecordData({
  int? health,
  DocumentReference? referencedItem,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'health': health,
      'referencedItem': referencedItem,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnemiesRecordDocumentEquality implements Equality<EnemiesRecord> {
  const EnemiesRecordDocumentEquality();

  @override
  bool equals(EnemiesRecord? e1, EnemiesRecord? e2) {
    return e1?.health == e2?.health &&
        e1?.referencedItem == e2?.referencedItem &&
        e1?.name == e2?.name;
  }

  @override
  int hash(EnemiesRecord? e) =>
      const ListEquality().hash([e?.health, e?.referencedItem, e?.name]);

  @override
  bool isValidKey(Object? o) => o is EnemiesRecord;
}
