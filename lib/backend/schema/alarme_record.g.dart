// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarme_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlarmeRecord> _$alarmeRecordSerializer =
    new _$AlarmeRecordSerializer();

class _$AlarmeRecordSerializer implements StructuredSerializer<AlarmeRecord> {
  @override
  final Iterable<Type> types = const [AlarmeRecord, _$AlarmeRecord];
  @override
  final String wireName = 'AlarmeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AlarmeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.heure;
    if (value != null) {
      result
        ..add('heure')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minutes;
    if (value != null) {
      result
        ..add('minutes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jours;
    if (value != null) {
      result
        ..add('jours')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AlarmeRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlarmeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'heure':
          result.heure = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'minutes':
          result.minutes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jours':
          result.jours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AlarmeRecord extends AlarmeRecord {
  @override
  final int heure;
  @override
  final String minutes;
  @override
  final String jours;
  @override
  final DocumentReference<Object> reference;

  factory _$AlarmeRecord([void Function(AlarmeRecordBuilder) updates]) =>
      (new AlarmeRecordBuilder()..update(updates)).build();

  _$AlarmeRecord._({this.heure, this.minutes, this.jours, this.reference})
      : super._();

  @override
  AlarmeRecord rebuild(void Function(AlarmeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmeRecordBuilder toBuilder() => new AlarmeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmeRecord &&
        heure == other.heure &&
        minutes == other.minutes &&
        jours == other.jours &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, heure.hashCode), minutes.hashCode), jours.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlarmeRecord')
          ..add('heure', heure)
          ..add('minutes', minutes)
          ..add('jours', jours)
          ..add('reference', reference))
        .toString();
  }
}

class AlarmeRecordBuilder
    implements Builder<AlarmeRecord, AlarmeRecordBuilder> {
  _$AlarmeRecord _$v;

  int _heure;
  int get heure => _$this._heure;
  set heure(int heure) => _$this._heure = heure;

  String _minutes;
  String get minutes => _$this._minutes;
  set minutes(String minutes) => _$this._minutes = minutes;

  String _jours;
  String get jours => _$this._jours;
  set jours(String jours) => _$this._jours = jours;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AlarmeRecordBuilder() {
    AlarmeRecord._initializeBuilder(this);
  }

  AlarmeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _heure = $v.heure;
      _minutes = $v.minutes;
      _jours = $v.jours;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlarmeRecord;
  }

  @override
  void update(void Function(AlarmeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlarmeRecord build() {
    final _$result = _$v ??
        new _$AlarmeRecord._(
            heure: heure, minutes: minutes, jours: jours, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
