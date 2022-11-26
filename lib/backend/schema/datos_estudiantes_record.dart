import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'datos_estudiantes_record.g.dart';

abstract class DatosEstudiantesRecord
    implements Built<DatosEstudiantesRecord, DatosEstudiantesRecordBuilder> {
  static Serializer<DatosEstudiantesRecord> get serializer =>
      _$datosEstudiantesRecordSerializer;

  String? get nombre;

  String? get apellido;

  String? get codigoe;

  int? get edad;

  String? get sexo;

  String? get tutor;

  String? get direccion;

  int? get telefono;

  String? get foto;

  String? get turno;

  String? get grado;

  @BuiltValueField(wireName: 'Nota1')
  int? get nota1;

  @BuiltValueField(wireName: 'Nota2')
  int? get nota2;

  @BuiltValueField(wireName: 'Nota3')
  int? get nota3;

  @BuiltValueField(wireName: 'Nota4')
  int? get nota4;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatosEstudiantesRecordBuilder builder) =>
      builder
        ..nombre = ''
        ..apellido = ''
        ..codigoe = ''
        ..edad = 0
        ..sexo = ''
        ..tutor = ''
        ..direccion = ''
        ..telefono = 0
        ..foto = ''
        ..turno = ''
        ..grado = ''
        ..nota1 = 0
        ..nota2 = 0
        ..nota3 = 0
        ..nota4 = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('datos_estudiantes');

  static Stream<DatosEstudiantesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatosEstudiantesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatosEstudiantesRecord._();
  factory DatosEstudiantesRecord(
          [void Function(DatosEstudiantesRecordBuilder) updates]) =
      _$DatosEstudiantesRecord;

  static DatosEstudiantesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatosEstudiantesRecordData({
  String? nombre,
  String? apellido,
  String? codigoe,
  int? edad,
  String? sexo,
  String? tutor,
  String? direccion,
  int? telefono,
  String? foto,
  String? turno,
  String? grado,
  int? nota1,
  int? nota2,
  int? nota3,
  int? nota4,
}) {
  final firestoreData = serializers.toFirestore(
    DatosEstudiantesRecord.serializer,
    DatosEstudiantesRecord(
      (d) => d
        ..nombre = nombre
        ..apellido = apellido
        ..codigoe = codigoe
        ..edad = edad
        ..sexo = sexo
        ..tutor = tutor
        ..direccion = direccion
        ..telefono = telefono
        ..foto = foto
        ..turno = turno
        ..grado = grado
        ..nota1 = nota1
        ..nota2 = nota2
        ..nota3 = nota3
        ..nota4 = nota4,
    ),
  );

  return firestoreData;
}
