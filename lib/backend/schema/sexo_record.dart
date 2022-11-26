import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sexo_record.g.dart';

abstract class SexoRecord implements Built<SexoRecord, SexoRecordBuilder> {
  static Serializer<SexoRecord> get serializer => _$sexoRecordSerializer;

  String? get sexos;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SexoRecordBuilder builder) =>
      builder..sexos = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sexo');

  static Stream<SexoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SexoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SexoRecord._();
  factory SexoRecord([void Function(SexoRecordBuilder) updates]) = _$SexoRecord;

  static SexoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSexoRecordData({
  String? sexos,
}) {
  final firestoreData = serializers.toFirestore(
    SexoRecord.serializer,
    SexoRecord(
      (s) => s..sexos = sexos,
    ),
  );

  return firestoreData;
}
