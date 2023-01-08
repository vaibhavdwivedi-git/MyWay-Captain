// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leads_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LeadsRecord> _$leadsRecordSerializer = new _$LeadsRecordSerializer();

class _$LeadsRecordSerializer implements StructuredSerializer<LeadsRecord> {
  @override
  final Iterable<Type> types = const [LeadsRecord, _$LeadsRecord];
  @override
  final String wireName = 'LeadsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LeadsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobile;
    if (value != null) {
      result
        ..add('mobile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  LeadsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeadsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$LeadsRecord extends LeadsRecord {
  @override
  final String? name;
  @override
  final String? mobile;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LeadsRecord([void Function(LeadsRecordBuilder)? updates]) =>
      (new LeadsRecordBuilder()..update(updates))._build();

  _$LeadsRecord._({this.name, this.mobile, this.time, this.ffRef}) : super._();

  @override
  LeadsRecord rebuild(void Function(LeadsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeadsRecordBuilder toBuilder() => new LeadsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeadsRecord &&
        name == other.name &&
        mobile == other.mobile &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), mobile.hashCode), time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeadsRecord')
          ..add('name', name)
          ..add('mobile', mobile)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LeadsRecordBuilder implements Builder<LeadsRecord, LeadsRecordBuilder> {
  _$LeadsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mobile;
  String? get mobile => _$this._mobile;
  set mobile(String? mobile) => _$this._mobile = mobile;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LeadsRecordBuilder() {
    LeadsRecord._initializeBuilder(this);
  }

  LeadsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mobile = $v.mobile;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeadsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeadsRecord;
  }

  @override
  void update(void Function(LeadsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeadsRecord build() => _build();

  _$LeadsRecord _build() {
    final _$result = _$v ??
        new _$LeadsRecord._(
            name: name, mobile: mobile, time: time, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
