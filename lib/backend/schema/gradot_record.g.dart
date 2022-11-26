// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradot_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GradotRecord> _$gradotRecordSerializer =
    new _$GradotRecordSerializer();

class _$GradotRecordSerializer implements StructuredSerializer<GradotRecord> {
  @override
  final Iterable<Type> types = const [GradotRecord, _$GradotRecord];
  @override
  final String wireName = 'GradotRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GradotRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nivel;
    if (value != null) {
      result
        ..add('nivel')
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
  GradotRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GradotRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nivel':
          result.nivel = serializers.deserialize(value,
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

class _$GradotRecord extends GradotRecord {
  @override
  final String? nivel;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GradotRecord([void Function(GradotRecordBuilder)? updates]) =>
      (new GradotRecordBuilder()..update(updates))._build();

  _$GradotRecord._({this.nivel, this.ffRef}) : super._();

  @override
  GradotRecord rebuild(void Function(GradotRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GradotRecordBuilder toBuilder() => new GradotRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GradotRecord &&
        nivel == other.nivel &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nivel.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GradotRecord')
          ..add('nivel', nivel)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GradotRecordBuilder
    implements Builder<GradotRecord, GradotRecordBuilder> {
  _$GradotRecord? _$v;

  String? _nivel;
  String? get nivel => _$this._nivel;
  set nivel(String? nivel) => _$this._nivel = nivel;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GradotRecordBuilder() {
    GradotRecord._initializeBuilder(this);
  }

  GradotRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nivel = $v.nivel;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GradotRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GradotRecord;
  }

  @override
  void update(void Function(GradotRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GradotRecord build() => _build();

  _$GradotRecord _build() {
    final _$result = _$v ?? new _$GradotRecord._(nivel: nivel, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
