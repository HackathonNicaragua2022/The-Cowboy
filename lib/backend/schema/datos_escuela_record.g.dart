// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datos_escuela_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatosEscuelaRecord> _$datosEscuelaRecordSerializer =
    new _$DatosEscuelaRecordSerializer();

class _$DatosEscuelaRecordSerializer
    implements StructuredSerializer<DatosEscuelaRecord> {
  @override
  final Iterable<Type> types = const [DatosEscuelaRecord, _$DatosEscuelaRecord];
  @override
  final String wireName = 'DatosEscuelaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DatosEscuelaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.departamento;
    if (value != null) {
      result
        ..add('Departamento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.municipio;
    if (value != null) {
      result
        ..add('Municipio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreEscuela;
    if (value != null) {
      result
        ..add('NombreEscuela')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codigounico;
    if (value != null) {
      result
        ..add('codigounico')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cantAulas;
    if (value != null) {
      result
        ..add('CantAulas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreDir;
    if (value != null) {
      result
        ..add('NombreDir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tel;
    if (value != null) {
      result
        ..add('tel')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cantdocentematu;
    if (value != null) {
      result
        ..add('cantdocentematu')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cantdocentevesp;
    if (value != null) {
      result
        ..add('cantdocentevesp')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotodirector;
    if (value != null) {
      result
        ..add('fotodirector')
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
  DatosEscuelaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatosEscuelaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Departamento':
          result.departamento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Municipio':
          result.municipio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NombreEscuela':
          result.nombreEscuela = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'codigounico':
          result.codigounico = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'CantAulas':
          result.cantAulas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NombreDir':
          result.nombreDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cantdocentematu':
          result.cantdocentematu = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cantdocentevesp':
          result.cantdocentevesp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fotodirector':
          result.fotodirector = serializers.deserialize(value,
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

class _$DatosEscuelaRecord extends DatosEscuelaRecord {
  @override
  final String? departamento;
  @override
  final String? municipio;
  @override
  final String? nombreEscuela;
  @override
  final int? codigounico;
  @override
  final String? cantAulas;
  @override
  final String? nombreDir;
  @override
  final int? tel;
  @override
  final int? cantdocentematu;
  @override
  final int? cantdocentevesp;
  @override
  final String? logo;
  @override
  final String? fotodirector;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DatosEscuelaRecord(
          [void Function(DatosEscuelaRecordBuilder)? updates]) =>
      (new DatosEscuelaRecordBuilder()..update(updates))._build();

  _$DatosEscuelaRecord._(
      {this.departamento,
      this.municipio,
      this.nombreEscuela,
      this.codigounico,
      this.cantAulas,
      this.nombreDir,
      this.tel,
      this.cantdocentematu,
      this.cantdocentevesp,
      this.logo,
      this.fotodirector,
      this.ffRef})
      : super._();

  @override
  DatosEscuelaRecord rebuild(
          void Function(DatosEscuelaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatosEscuelaRecordBuilder toBuilder() =>
      new DatosEscuelaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatosEscuelaRecord &&
        departamento == other.departamento &&
        municipio == other.municipio &&
        nombreEscuela == other.nombreEscuela &&
        codigounico == other.codigounico &&
        cantAulas == other.cantAulas &&
        nombreDir == other.nombreDir &&
        tel == other.tel &&
        cantdocentematu == other.cantdocentematu &&
        cantdocentevesp == other.cantdocentevesp &&
        logo == other.logo &&
        fotodirector == other.fotodirector &&
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
                                            $jc($jc(0, departamento.hashCode),
                                                municipio.hashCode),
                                            nombreEscuela.hashCode),
                                        codigounico.hashCode),
                                    cantAulas.hashCode),
                                nombreDir.hashCode),
                            tel.hashCode),
                        cantdocentematu.hashCode),
                    cantdocentevesp.hashCode),
                logo.hashCode),
            fotodirector.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatosEscuelaRecord')
          ..add('departamento', departamento)
          ..add('municipio', municipio)
          ..add('nombreEscuela', nombreEscuela)
          ..add('codigounico', codigounico)
          ..add('cantAulas', cantAulas)
          ..add('nombreDir', nombreDir)
          ..add('tel', tel)
          ..add('cantdocentematu', cantdocentematu)
          ..add('cantdocentevesp', cantdocentevesp)
          ..add('logo', logo)
          ..add('fotodirector', fotodirector)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DatosEscuelaRecordBuilder
    implements Builder<DatosEscuelaRecord, DatosEscuelaRecordBuilder> {
  _$DatosEscuelaRecord? _$v;

  String? _departamento;
  String? get departamento => _$this._departamento;
  set departamento(String? departamento) => _$this._departamento = departamento;

  String? _municipio;
  String? get municipio => _$this._municipio;
  set municipio(String? municipio) => _$this._municipio = municipio;

  String? _nombreEscuela;
  String? get nombreEscuela => _$this._nombreEscuela;
  set nombreEscuela(String? nombreEscuela) =>
      _$this._nombreEscuela = nombreEscuela;

  int? _codigounico;
  int? get codigounico => _$this._codigounico;
  set codigounico(int? codigounico) => _$this._codigounico = codigounico;

  String? _cantAulas;
  String? get cantAulas => _$this._cantAulas;
  set cantAulas(String? cantAulas) => _$this._cantAulas = cantAulas;

  String? _nombreDir;
  String? get nombreDir => _$this._nombreDir;
  set nombreDir(String? nombreDir) => _$this._nombreDir = nombreDir;

  int? _tel;
  int? get tel => _$this._tel;
  set tel(int? tel) => _$this._tel = tel;

  int? _cantdocentematu;
  int? get cantdocentematu => _$this._cantdocentematu;
  set cantdocentematu(int? cantdocentematu) =>
      _$this._cantdocentematu = cantdocentematu;

  int? _cantdocentevesp;
  int? get cantdocentevesp => _$this._cantdocentevesp;
  set cantdocentevesp(int? cantdocentevesp) =>
      _$this._cantdocentevesp = cantdocentevesp;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _fotodirector;
  String? get fotodirector => _$this._fotodirector;
  set fotodirector(String? fotodirector) => _$this._fotodirector = fotodirector;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DatosEscuelaRecordBuilder() {
    DatosEscuelaRecord._initializeBuilder(this);
  }

  DatosEscuelaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _departamento = $v.departamento;
      _municipio = $v.municipio;
      _nombreEscuela = $v.nombreEscuela;
      _codigounico = $v.codigounico;
      _cantAulas = $v.cantAulas;
      _nombreDir = $v.nombreDir;
      _tel = $v.tel;
      _cantdocentematu = $v.cantdocentematu;
      _cantdocentevesp = $v.cantdocentevesp;
      _logo = $v.logo;
      _fotodirector = $v.fotodirector;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatosEscuelaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatosEscuelaRecord;
  }

  @override
  void update(void Function(DatosEscuelaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatosEscuelaRecord build() => _build();

  _$DatosEscuelaRecord _build() {
    final _$result = _$v ??
        new _$DatosEscuelaRecord._(
            departamento: departamento,
            municipio: municipio,
            nombreEscuela: nombreEscuela,
            codigounico: codigounico,
            cantAulas: cantAulas,
            nombreDir: nombreDir,
            tel: tel,
            cantdocentematu: cantdocentematu,
            cantdocentevesp: cantdocentevesp,
            logo: logo,
            fotodirector: fotodirector,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
