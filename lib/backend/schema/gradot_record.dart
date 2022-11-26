import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gradot_record.g.dart';

abstract class GradotRecord
    implements Built<GradotRecord, GradotRecordBuilder> {
  static Serializer<GradotRecord> get serializer => _$gradotRecordSerializer;

  String? get nivel;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GradotRecordBuilder builder) =>
      builder..nivel = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gradot');

  static Stream<GradotRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GradotRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GradotRecord._();
  factory GradotRecord([void Function(GradotRecordBuilder) updates]) =
      _$GradotRecord;

  static GradotRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGradotRecordData({
  String? nivel,
}) {
  final firestoreData = serializers.toFirestore(
    GradotRecord.serializer,
    GradotRecord(
      (g) => g..nivel = nivel,
    ),
  );

  return firestoreData;
}
