import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'outlets_record.g.dart';

abstract class OutletsRecord
    implements Built<OutletsRecord, OutletsRecordBuilder> {
  static Serializer<OutletsRecord> get serializer => _$outletsRecordSerializer;

  @BuiltValueField(wireName: 'Address')
  String? get address;

  @BuiltValueField(wireName: 'Geo-location')
  LatLng? get geoLocation;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Rating')
  int? get rating;

  @BuiltValueField(wireName: 'Revenue')
  int? get revenue;

  @BuiltValueField(wireName: 'Visits')
  int? get visits;

  @BuiltValueField(wireName: 'DisplayPicture')
  String? get displayPicture;

  @BuiltValueField(wireName: 'Contact')
  String? get contact;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OutletsRecordBuilder builder) => builder
    ..address = ''
    ..name = ''
    ..rating = 0
    ..revenue = 0
    ..visits = 0
    ..displayPicture = ''
    ..contact = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Outlets');

  static Stream<OutletsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OutletsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OutletsRecord._();
  factory OutletsRecord([void Function(OutletsRecordBuilder) updates]) =
      _$OutletsRecord;

  static OutletsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOutletsRecordData({
  String? address,
  LatLng? geoLocation,
  String? name,
  int? rating,
  int? revenue,
  int? visits,
  String? displayPicture,
  String? contact,
}) {
  final firestoreData = serializers.toFirestore(
    OutletsRecord.serializer,
    OutletsRecord(
      (o) => o
        ..address = address
        ..geoLocation = geoLocation
        ..name = name
        ..rating = rating
        ..revenue = revenue
        ..visits = visits
        ..displayPicture = displayPicture
        ..contact = contact,
    ),
  );

  return firestoreData;
}
