// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turno_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TurnoRecord> _$turnoRecordSerializer = new _$TurnoRecordSerializer();

class _$TurnoRecordSerializer implements StructuredSerializer<TurnoRecord> {
  @override
  final Iterable<Type> types = const [TurnoRecord, _$TurnoRecord];
  @override
  final String wireName = 'TurnoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TurnoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.turnos;
    if (value != null) {
      result
        ..add('turnos')
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
  TurnoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TurnoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'turnos':
          result.turnos = serializers.deserialize(value,
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

class _$TurnoRecord extends TurnoRecord {
  @override
  final String? turnos;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TurnoRecord([void Function(TurnoRecordBuilder)? updates]) =>
      (new TurnoRecordBuilder()..update(updates))._build();

  _$TurnoRecord._({this.turnos, this.ffRef}) : super._();

  @override
  TurnoRecord rebuild(void Function(TurnoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TurnoRecordBuilder toBuilder() => new TurnoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TurnoRecord &&
        turnos == other.turnos &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, turnos.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TurnoRecord')
          ..add('turnos', turnos)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TurnoRecordBuilder implements Builder<TurnoRecord, TurnoRecordBuilder> {
  _$TurnoRecord? _$v;

  String? _turnos;
  String? get turnos => _$this._turnos;
  set turnos(String? turnos) => _$this._turnos = turnos;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TurnoRecordBuilder() {
    TurnoRecord._initializeBuilder(this);
  }

  TurnoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _turnos = $v.turnos;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TurnoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TurnoRecord;
  }

  @override
  void update(void Function(TurnoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TurnoRecord build() => _build();

  _$TurnoRecord _build() {
    final _$result = _$v ?? new _$TurnoRecord._(turnos: turnos, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
