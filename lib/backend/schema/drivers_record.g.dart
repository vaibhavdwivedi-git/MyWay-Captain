// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DriversRecord> _$driversRecordSerializer =
    new _$DriversRecordSerializer();

class _$DriversRecordSerializer implements StructuredSerializer<DriversRecord> {
  @override
  final Iterable<Type> types = const [DriversRecord, _$DriversRecord];
  @override
  final String wireName = 'DriversRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DriversRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayPicture;
    if (value != null) {
      result
        ..add('DisplayPicture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moneySpent;
    if (value != null) {
      result
        ..add('MoneySpent')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.trips;
    if (value != null) {
      result
        ..add('Trips')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bills;
    if (value != null) {
      result
        ..add('Bills')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('MobileNumber')
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
  DriversRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DriversRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DisplayPicture':
          result.displayPicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'MoneySpent':
          result.moneySpent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Trips':
          result.trips = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Bills':
          result.bills.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'MobileNumber':
          result.mobileNumber = serializers.deserialize(value,
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

class _$DriversRecord extends DriversRecord {
  @override
  final String? name;
  @override
  final String? displayPicture;
  @override
  final int? moneySpent;
  @override
  final int? trips;
  @override
  final BuiltList<String>? bills;
  @override
  final String? mobileNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DriversRecord([void Function(DriversRecordBuilder)? updates]) =>
      (new DriversRecordBuilder()..update(updates))._build();

  _$DriversRecord._(
      {this.name,
      this.displayPicture,
      this.moneySpent,
      this.trips,
      this.bills,
      this.mobileNumber,
      this.ffRef})
      : super._();

  @override
  DriversRecord rebuild(void Function(DriversRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriversRecordBuilder toBuilder() => new DriversRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriversRecord &&
        name == other.name &&
        displayPicture == other.displayPicture &&
        moneySpent == other.moneySpent &&
        trips == other.trips &&
        bills == other.bills &&
        mobileNumber == other.mobileNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), displayPicture.hashCode),
                        moneySpent.hashCode),
                    trips.hashCode),
                bills.hashCode),
            mobileNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriversRecord')
          ..add('name', name)
          ..add('displayPicture', displayPicture)
          ..add('moneySpent', moneySpent)
          ..add('trips', trips)
          ..add('bills', bills)
          ..add('mobileNumber', mobileNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DriversRecordBuilder
    implements Builder<DriversRecord, DriversRecordBuilder> {
  _$DriversRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayPicture;
  String? get displayPicture => _$this._displayPicture;
  set displayPicture(String? displayPicture) =>
      _$this._displayPicture = displayPicture;

  int? _moneySpent;
  int? get moneySpent => _$this._moneySpent;
  set moneySpent(int? moneySpent) => _$this._moneySpent = moneySpent;

  int? _trips;
  int? get trips => _$this._trips;
  set trips(int? trips) => _$this._trips = trips;

  ListBuilder<String>? _bills;
  ListBuilder<String> get bills => _$this._bills ??= new ListBuilder<String>();
  set bills(ListBuilder<String>? bills) => _$this._bills = bills;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DriversRecordBuilder() {
    DriversRecord._initializeBuilder(this);
  }

  DriversRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayPicture = $v.displayPicture;
      _moneySpent = $v.moneySpent;
      _trips = $v.trips;
      _bills = $v.bills?.toBuilder();
      _mobileNumber = $v.mobileNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriversRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriversRecord;
  }

  @override
  void update(void Function(DriversRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriversRecord build() => _build();

  _$DriversRecord _build() {
    _$DriversRecord _$result;
    try {
      _$result = _$v ??
          new _$DriversRecord._(
              name: name,
              displayPicture: displayPicture,
              moneySpent: moneySpent,
              trips: trips,
              bills: _bills?.build(),
              mobileNumber: mobileNumber,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bills';
        _bills?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DriversRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
