// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sexo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SexoRecord> _$sexoRecordSerializer = new _$SexoRecordSerializer();

class _$SexoRecordSerializer implements StructuredSerializer<SexoRecord> {
  @override
  final Iterable<Type> types = const [SexoRecord, _$SexoRecord];
  @override
  final String wireName = 'SexoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SexoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sexos;
    if (value != null) {
      result
        ..add('sexos')
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
  SexoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SexoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sexos':
          result.sexos = serializers.deserialize(value,
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

class _$SexoRecord extends SexoRecord {
  @override
  final String? sexos;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SexoRecord([void Function(SexoRecordBuilder)? updates]) =>
      (new SexoRecordBuilder()..update(updates))._build();

  _$SexoRecord._({this.sexos, this.ffRef}) : super._();

  @override
  SexoRecord rebuild(void Function(SexoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SexoRecordBuilder toBuilder() => new SexoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SexoRecord && sexos == other.sexos && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sexos.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SexoRecord')
          ..add('sexos', sexos)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SexoRecordBuilder implements Builder<SexoRecord, SexoRecordBuilder> {
  _$SexoRecord? _$v;

  String? _sexos;
  String? get sexos => _$this._sexos;
  set sexos(String? sexos) => _$this._sexos = sexos;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SexoRecordBuilder() {
    SexoRecord._initializeBuilder(this);
  }

  SexoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sexos = $v.sexos;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SexoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SexoRecord;
  }

  @override
  void update(void Function(SexoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SexoRecord build() => _build();

  _$SexoRecord _build() {
    final _$result = _$v ?? new _$SexoRecord._(sexos: sexos, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
