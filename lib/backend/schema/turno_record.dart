import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'turno_record.g.dart';

abstract class TurnoRecord implements Built<TurnoRecord, TurnoRecordBuilder> {
  static Serializer<TurnoRecord> get serializer => _$turnoRecordSerializer;

  String? get turnos;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TurnoRecordBuilder builder) =>
      builder..turnos = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('turno');

  static Stream<TurnoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TurnoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TurnoRecord._();
  factory TurnoRecord([void Function(TurnoRecordBuilder) updates]) =
      _$TurnoRecord;

  static TurnoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTurnoRecordData({
  String? turnos,
}) {
  final firestoreData = serializers.toFirestore(
    TurnoRecord.serializer,
    TurnoRecord(
      (t) => t..turnos = turnos,
    ),
  );

  return firestoreData;
}
