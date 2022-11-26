// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datos_estudiantes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatosEstudiantesRecord> _$datosEstudiantesRecordSerializer =
    new _$DatosEstudiantesRecordSerializer();

class _$DatosEstudiantesRecordSerializer
    implements StructuredSerializer<DatosEstudiantesRecord> {
  @override
  final Iterable<Type> types = const [
    DatosEstudiantesRecord,
    _$DatosEstudiantesRecord
  ];
  @override
  final String wireName = 'DatosEstudiantesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DatosEstudiantesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellido;
    if (value != null) {
      result
        ..add('apellido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codigoe;
    if (value != null) {
      result
        ..add('codigoe')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.edad;
    if (value != null) {
      result
        ..add('edad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sexo;
    if (value != null) {
      result
        ..add('sexo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tutor;
    if (value != null) {
      result
        ..add('tutor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefono;
    if (value != null) {
      result
        ..add('telefono')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.turno;
    if (value != null) {
      result
        ..add('turno')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grado;
    if (value != null) {
      result
        ..add('grado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DatosEstudiantesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatosEstudiantesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'apellido':
          result.apellido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'codigoe':
          result.codigoe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sexo':
          result.sexo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tutor':
          result.tutor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefono':
          result.telefono = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'turno':
          result.turno = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'grado':
          result.grado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DatosEstudiantesRecord extends DatosEstudiantesRecord {
  @override
  final String? nombre;
  @override
  final String? apellido;
  @override
  final String? codigoe;
  @override
  final int? edad;
  @override
  final String? sexo;
  @override
  final String? tutor;
  @override
  final String? direccion;
  @override
  final int? telefono;
  @override
  final String? foto;
  @override
  final String? turno;
  @override
  final String? grado;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DatosEstudiantesRecord(
          [void Function(DatosEstudiantesRecordBuilder)? updates]) =>
      (new DatosEstudiantesRecordBuilder()..update(updates))._build();

  _$DatosEstudiantesRecord._(
      {this.nombre,
      this.apellido,
      this.codigoe,
      this.edad,
      this.sexo,
      this.tutor,
      this.direccion,
      this.telefono,
      this.foto,
      this.turno,
      this.grado,
      this.ffRef})
      : super._();

  @override
  DatosEstudiantesRecord rebuild(
          void Function(DatosEstudiantesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatosEstudiantesRecordBuilder toBuilder() =>
      new DatosEstudiantesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatosEstudiantesRecord &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        codigoe == other.codigoe &&
        edad == other.edad &&
        sexo == other.sexo &&
        tutor == other.tutor &&
        direccion == other.direccion &&
        telefono == other.telefono &&
        foto == other.foto &&
        turno == other.turno &&
        grado == other.grado &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, nombre.hashCode),
                                                apellido.hashCode),
                                            codigoe.hashCode),
                                        edad.hashCode),
                                    sexo.hashCode),
                                tutor.hashCode),
                            direccion.hashCode),
                        telefono.hashCode),
                    foto.hashCode),
                turno.hashCode),
            grado.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatosEstudiantesRecord')
          ..add('nombre', nombre)
          ..add('apellido', apellido)
          ..add('codigoe', codigoe)
          ..add('edad', edad)
          ..add('sexo', sexo)
          ..add('tutor', tutor)
          ..add('direccion', direccion)
          ..add('telefono', telefono)
          ..add('foto', foto)
          ..add('turno', turno)
          ..add('grado', grado)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DatosEstudiantesRecordBuilder
    implements Builder<DatosEstudiantesRecord, DatosEstudiantesRecordBuilder> {
  _$DatosEstudiantesRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _apellido;
  String? get apellido => _$this._apellido;
  set apellido(String? apellido) => _$this._apellido = apellido;

  String? _codigoe;
  String? get codigoe => _$this._codigoe;
  set codigoe(String? codigoe) => _$this._codigoe = codigoe;

  int? _edad;
  int? get edad => _$this._edad;
  set edad(int? edad) => _$this._edad = edad;

  String? _sexo;
  String? get sexo => _$this._sexo;
  set sexo(String? sexo) => _$this._sexo = sexo;

  String? _tutor;
  String? get tutor => _$this._tutor;
  set tutor(String? tutor) => _$this._tutor = tutor;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  int? _telefono;
  int? get telefono => _$this._telefono;
  set telefono(int? telefono) => _$this._telefono = telefono;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  String? _turno;
  String? get turno => _$this._turno;
  set turno(String? turno) => _$this._turno = turno;

  String? _grado;
  String? get grado => _$this._grado;
  set grado(String? grado) => _$this._grado = grado;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DatosEstudiantesRecordBuilder() {
    DatosEstudiantesRecord._initializeBuilder(this);
  }

  DatosEstudiantesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _apellido = $v.apellido;
      _codigoe = $v.codigoe;
      _edad = $v.edad;
      _sexo = $v.sexo;
      _tutor = $v.tutor;
      _direccion = $v.direccion;
      _telefono = $v.telefono;
      _foto = $v.foto;
      _turno = $v.turno;
      _grado = $v.grado;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatosEstudiantesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatosEstudiantesRecord;
  }

  @override
  void update(void Function(DatosEstudiantesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatosEstudiantesRecord build() => _build();

  _$DatosEstudiantesRecord _build() {
    final _$result = _$v ??
        new _$DatosEstudiantesRecord._(
            nombre: nombre,
            apellido: apellido,
            codigoe: codigoe,
            edad: edad,
            sexo: sexo,
            tutor: tutor,
            direccion: direccion,
            telefono: telefono,
            foto: foto,
            turno: turno,
            grado: grado,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
