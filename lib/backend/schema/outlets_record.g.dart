// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OutletsRecord> _$outletsRecordSerializer =
    new _$OutletsRecordSerializer();

class _$OutletsRecordSerializer implements StructuredSerializer<OutletsRecord> {
  @override
  final Iterable<Type> types = const [OutletsRecord, _$OutletsRecord];
  @override
  final String wireName = 'OutletsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OutletsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.address;
    if (value != null) {
      result
        ..add('Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.geoLocation;
    if (value != null) {
      result
        ..add('Geo-location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('Rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.revenue;
    if (value != null) {
      result
        ..add('Revenue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visits;
    if (value != null) {
      result
        ..add('Visits')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.displayPicture;
    if (value != null) {
      result
        ..add('DisplayPicture')
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
  OutletsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OutletsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Geo-location':
          result.geoLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Visits':
          result.visits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DisplayPicture':
          result.displayPicture = serializers.deserialize(value,
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

class _$OutletsRecord extends OutletsRecord {
  @override
  final String? address;
  @override
  final LatLng? geoLocation;
  @override
  final String? name;
  @override
  final int? rating;
  @override
  final int? revenue;
  @override
  final int? visits;
  @override
  final String? displayPicture;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OutletsRecord([void Function(OutletsRecordBuilder)? updates]) =>
      (new OutletsRecordBuilder()..update(updates))._build();

  _$OutletsRecord._(
      {this.address,
      this.geoLocation,
      this.name,
      this.rating,
      this.revenue,
      this.visits,
      this.displayPicture,
      this.ffRef})
      : super._();

  @override
  OutletsRecord rebuild(void Function(OutletsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutletsRecordBuilder toBuilder() => new OutletsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutletsRecord &&
        address == other.address &&
        geoLocation == other.geoLocation &&
        name == other.name &&
        rating == other.rating &&
        revenue == other.revenue &&
        visits == other.visits &&
        displayPicture == other.displayPicture &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, address.hashCode), geoLocation.hashCode),
                            name.hashCode),
                        rating.hashCode),
                    revenue.hashCode),
                visits.hashCode),
            displayPicture.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutletsRecord')
          ..add('address', address)
          ..add('geoLocation', geoLocation)
          ..add('name', name)
          ..add('rating', rating)
          ..add('revenue', revenue)
          ..add('visits', visits)
          ..add('displayPicture', displayPicture)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OutletsRecordBuilder
    implements Builder<OutletsRecord, OutletsRecordBuilder> {
  _$OutletsRecord? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  LatLng? _geoLocation;
  LatLng? get geoLocation => _$this._geoLocation;
  set geoLocation(LatLng? geoLocation) => _$this._geoLocation = geoLocation;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _revenue;
  int? get revenue => _$this._revenue;
  set revenue(int? revenue) => _$this._revenue = revenue;

  int? _visits;
  int? get visits => _$this._visits;
  set visits(int? visits) => _$this._visits = visits;

  String? _displayPicture;
  String? get displayPicture => _$this._displayPicture;
  set displayPicture(String? displayPicture) =>
      _$this._displayPicture = displayPicture;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OutletsRecordBuilder() {
    OutletsRecord._initializeBuilder(this);
  }

  OutletsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _geoLocation = $v.geoLocation;
      _name = $v.name;
      _rating = $v.rating;
      _revenue = $v.revenue;
      _visits = $v.visits;
      _displayPicture = $v.displayPicture;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutletsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutletsRecord;
  }

  @override
  void update(void Function(OutletsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutletsRecord build() => _build();

  _$OutletsRecord _build() {
    final _$result = _$v ??
        new _$OutletsRecord._(
            address: address,
            geoLocation: geoLocation,
            name: name,
            rating: rating,
            revenue: revenue,
            visits: visits,
            displayPicture: displayPicture,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
