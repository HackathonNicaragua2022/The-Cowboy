import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'date_personaldoc_record.g.dart';

abstract class DatePersonaldocRecord
    implements Built<DatePersonaldocRecord, DatePersonaldocRecordBuilder> {
  static Serializer<DatePersonaldocRecord> get serializer =>
      _$datePersonaldocRecordSerializer;

  @BuiltValueField(wireName: 'Nombres')
  String? get nombres;

  @BuiltValueField(wireName: 'Apellidos')
  String? get apellidos;

  @BuiltValueField(wireName: 'Edad')
  int? get edad;

  @BuiltValueField(wireName: 'Email')
  String? get email;

  @BuiltValueField(wireName: 'Telefono')
  int? get telefono;

  @BuiltValueField(wireName: 'Cargo')
  String? get cargo;

  @BuiltValueField(wireName: 'Foto')
  String? get foto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatePersonaldocRecordBuilder builder) =>
      builder
        ..nombres = ''
        ..apellidos = ''
        ..edad = 0
        ..email = ''
        ..telefono = 0
        ..cargo = ''
        ..foto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('date_personaldoc');

  static Stream<DatePersonaldocRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatePersonaldocRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatePersonaldocRecord._();
  factory DatePersonaldocRecord(
          [void Function(DatePersonaldocRecordBuilder) updates]) =
      _$DatePersonaldocRecord;

  static DatePersonaldocRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatePersonaldocRecordData({
  String? nombres,
  String? apellidos,
  int? edad,
  String? email,
  int? telefono,
  String? cargo,
  String? foto,
}) {
  final firestoreData = serializers.toFirestore(
    DatePersonaldocRecord.serializer,
    DatePersonaldocRecord(
      (d) => d
        ..nombres = nombres
        ..apellidos = apellidos
        ..edad = edad
        ..email = email
        ..telefono = telefono
        ..cargo = cargo
        ..foto = foto,
    ),
  );

  return firestoreData;
}
