// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bill;
    if (value != null) {
      result
        ..add('Bill')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.driver;
    if (value != null) {
      result
        ..add('Driver')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.outlet;
    if (value != null) {
      result
        ..add('Outlet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('Photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verified;
    if (value != null) {
      result
        ..add('Verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.approval;
    if (value != null) {
      result
        ..add('Approval')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverContact;
    if (value != null) {
      result
        ..add('DriverContact')
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
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Bill':
          result.bill = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Driver':
          result.driver = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Outlet':
          result.outlet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Verified':
          result.verified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Approval':
          result.approval = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DriverContact':
          result.driverContact = serializers.deserialize(value,
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

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final int? bill;
  @override
  final DateTime? date;
  @override
  final String? driver;
  @override
  final String? outlet;
  @override
  final String? photo;
  @override
  final bool? verified;
  @override
  final String? approval;
  @override
  final String? driverContact;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder)? updates]) =>
      (new TransactionsRecordBuilder()..update(updates))._build();

  _$TransactionsRecord._(
      {this.bill,
      this.date,
      this.driver,
      this.outlet,
      this.photo,
      this.verified,
      this.approval,
      this.driverContact,
      this.ffRef})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        bill == other.bill &&
        date == other.date &&
        driver == other.driver &&
        outlet == other.outlet &&
        photo == other.photo &&
        verified == other.verified &&
        approval == other.approval &&
        driverContact == other.driverContact &&
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
                            $jc($jc($jc(0, bill.hashCode), date.hashCode),
                                driver.hashCode),
                            outlet.hashCode),
                        photo.hashCode),
                    verified.hashCode),
                approval.hashCode),
            driverContact.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionsRecord')
          ..add('bill', bill)
          ..add('date', date)
          ..add('driver', driver)
          ..add('outlet', outlet)
          ..add('photo', photo)
          ..add('verified', verified)
          ..add('approval', approval)
          ..add('driverContact', driverContact)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord? _$v;

  int? _bill;
  int? get bill => _$this._bill;
  set bill(int? bill) => _$this._bill = bill;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _driver;
  String? get driver => _$this._driver;
  set driver(String? driver) => _$this._driver = driver;

  String? _outlet;
  String? get outlet => _$this._outlet;
  set outlet(String? outlet) => _$this._outlet = outlet;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  bool? _verified;
  bool? get verified => _$this._verified;
  set verified(bool? verified) => _$this._verified = verified;

  String? _approval;
  String? get approval => _$this._approval;
  set approval(String? approval) => _$this._approval = approval;

  String? _driverContact;
  String? get driverContact => _$this._driverContact;
  set driverContact(String? driverContact) =>
      _$this._driverContact = driverContact;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bill = $v.bill;
      _date = $v.date;
      _driver = $v.driver;
      _outlet = $v.outlet;
      _photo = $v.photo;
      _verified = $v.verified;
      _approval = $v.approval;
      _driverContact = $v.driverContact;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionsRecord build() => _build();

  _$TransactionsRecord _build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            bill: bill,
            date: date,
            driver: driver,
            outlet: outlet,
            photo: photo,
            verified: verified,
            approval: approval,
            driverContact: driverContact,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
