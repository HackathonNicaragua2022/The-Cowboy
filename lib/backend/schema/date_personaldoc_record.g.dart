// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_personaldoc_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatePersonaldocRecord> _$datePersonaldocRecordSerializer =
    new _$DatePersonaldocRecordSerializer();

class _$DatePersonaldocRecordSerializer
    implements StructuredSerializer<DatePersonaldocRecord> {
  @override
  final Iterable<Type> types = const [
    DatePersonaldocRecord,
    _$DatePersonaldocRecord
  ];
  @override
  final String wireName = 'DatePersonaldocRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DatePersonaldocRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombres;
    if (value != null) {
      result
        ..add('Nombres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellidos;
    if (value != null) {
      result
        ..add('Apellidos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.edad;
    if (value != null) {
      result
        ..add('Edad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('Email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefono;
    if (value != null) {
      result
        ..add('Telefono')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cargo;
    if (value != null) {
      result
        ..add('Cargo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.foto;
    if (value != null) {
      result
        ..add('Foto')
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
  DatePersonaldocRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatePersonaldocRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nombres':
          result.nombres = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Apellidos':
          result.apellidos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Telefono':
          result.telefono = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Cargo':
          result.cargo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Foto':
          result.foto = serializers.deserialize(value,
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

class _$DatePersonaldocRecord extends DatePersonaldocRecord {
  @override
  final String? nombres;
  @override
  final String? apellidos;
  @override
  final int? edad;
  @override
  final String? email;
  @override
  final int? telefono;
  @override
  final String? cargo;
  @override
  final String? foto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DatePersonaldocRecord(
          [void Function(DatePersonaldocRecordBuilder)? updates]) =>
      (new DatePersonaldocRecordBuilder()..update(updates))._build();

  _$DatePersonaldocRecord._(
      {this.nombres,
      this.apellidos,
      this.edad,
      this.email,
      this.telefono,
      this.cargo,
      this.foto,
      this.ffRef})
      : super._();

  @override
  DatePersonaldocRecord rebuild(
          void Function(DatePersonaldocRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatePersonaldocRecordBuilder toBuilder() =>
      new DatePersonaldocRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatePersonaldocRecord &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        edad == other.edad &&
        email == other.email &&
        telefono == other.telefono &&
        cargo == other.cargo &&
        foto == other.foto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nombres.hashCode), apellidos.hashCode),
                            edad.hashCode),
                        email.hashCode),
                    telefono.hashCode),
                cargo.hashCode),
            foto.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatePersonaldocRecord')
          ..add('nombres', nombres)
          ..add('apellidos', apellidos)
          ..add('edad', edad)
          ..add('email', email)
          ..add('telefono', telefono)
          ..add('cargo', cargo)
          ..add('foto', foto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DatePersonaldocRecordBuilder
    implements Builder<DatePersonaldocRecord, DatePersonaldocRecordBuilder> {
  _$DatePersonaldocRecord? _$v;

  String? _nombres;
  String? get nombres => _$this._nombres;
  set nombres(String? nombres) => _$this._nombres = nombres;

  String? _apellidos;
  String? get apellidos => _$this._apellidos;
  set apellidos(String? apellidos) => _$this._apellidos = apellidos;

  int? _edad;
  int? get edad => _$this._edad;
  set edad(int? edad) => _$this._edad = edad;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _telefono;
  int? get telefono => _$this._telefono;
  set telefono(int? telefono) => _$this._telefono = telefono;

  String? _cargo;
  String? get cargo => _$this._cargo;
  set cargo(String? cargo) => _$this._cargo = cargo;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DatePersonaldocRecordBuilder() {
    DatePersonaldocRecord._initializeBuilder(this);
  }

  DatePersonaldocRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombres = $v.nombres;
      _apellidos = $v.apellidos;
      _edad = $v.edad;
      _email = $v.email;
      _telefono = $v.telefono;
      _cargo = $v.cargo;
      _foto = $v.foto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatePersonaldocRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatePersonaldocRecord;
  }

  @override
  void update(void Function(DatePersonaldocRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatePersonaldocRecord build() => _build();

  _$DatePersonaldocRecord _build() {
    final _$result = _$v ??
        new _$DatePersonaldocRecord._(
            nombres: nombres,
            apellidos: apellidos,
            edad: edad,
            email: email,
            telefono: telefono,
            cargo: cargo,
            foto: foto,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
