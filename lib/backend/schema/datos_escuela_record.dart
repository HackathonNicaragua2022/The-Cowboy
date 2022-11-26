import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'datos_escuela_record.g.dart';

abstract class DatosEscuelaRecord
    implements Built<DatosEscuelaRecord, DatosEscuelaRecordBuilder> {
  static Serializer<DatosEscuelaRecord> get serializer =>
      _$datosEscuelaRecordSerializer;

  @BuiltValueField(wireName: 'Departamento')
  String? get departamento;

  @BuiltValueField(wireName: 'Municipio')
  String? get municipio;

  @BuiltValueField(wireName: 'NombreEscuela')
  String? get nombreEscuela;

  int? get codigounico;

  @BuiltValueField(wireName: 'CantAulas')
  String? get cantAulas;

  @BuiltValueField(wireName: 'NombreDir')
  String? get nombreDir;

  int? get tel;

  int? get cantdocentematu;

  int? get cantdocentevesp;

  String? get logo;

  String? get fotodirector;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatosEscuelaRecordBuilder builder) => builder
    ..departamento = ''
    ..municipio = ''
    ..nombreEscuela = ''
    ..codigounico = 0
    ..cantAulas = ''
    ..nombreDir = ''
    ..tel = 0
    ..cantdocentematu = 0
    ..cantdocentevesp = 0
    ..logo = ''
    ..fotodirector = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Datos_Escuela');

  static Stream<DatosEscuelaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatosEscuelaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatosEscuelaRecord._();
  factory DatosEscuelaRecord(
          [void Function(DatosEscuelaRecordBuilder) updates]) =
      _$DatosEscuelaRecord;

  static DatosEscuelaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatosEscuelaRecordData({
  String? departamento,
  String? municipio,
  String? nombreEscuela,
  int? codigounico,
  String? cantAulas,
  String? nombreDir,
  int? tel,
  int? cantdocentematu,
  int? cantdocentevesp,
  String? logo,
  String? fotodirector,
}) {
  final firestoreData = serializers.toFirestore(
    DatosEscuelaRecord.serializer,
    DatosEscuelaRecord(
      (d) => d
        ..departamento = departamento
        ..municipio = municipio
        ..nombreEscuela = nombreEscuela
        ..codigounico = codigounico
        ..cantAulas = cantAulas
        ..nombreDir = nombreDir
        ..tel = tel
        ..cantdocentematu = cantdocentematu
        ..cantdocentevesp = cantdocentevesp
        ..logo = logo
        ..fotodirector = fotodirector,
    ),
  );

  return firestoreData;
}
