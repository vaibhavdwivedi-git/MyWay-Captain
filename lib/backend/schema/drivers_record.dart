import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'drivers_record.g.dart';

abstract class DriversRecord
    implements Built<DriversRecord, DriversRecordBuilder> {
  static Serializer<DriversRecord> get serializer => _$driversRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'DisplayPicture')
  String? get displayPicture;

  @BuiltValueField(wireName: 'MoneySpent')
  int? get moneySpent;

  @BuiltValueField(wireName: 'Trips')
  int? get trips;

  @BuiltValueField(wireName: 'MobileNumber')
  String? get mobileNumber;

  @BuiltValueField(wireName: 'Reward')
  int? get reward;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DriversRecordBuilder builder) => builder
    ..name = ''
    ..displayPicture = ''
    ..moneySpent = 0
    ..trips = 0
    ..mobileNumber = ''
    ..reward = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Drivers');

  static Stream<DriversRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DriversRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DriversRecord._();
  factory DriversRecord([void Function(DriversRecordBuilder) updates]) =
      _$DriversRecord;

  static DriversRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDriversRecordData({
  String? name,
  String? displayPicture,
  int? moneySpent,
  int? trips,
  String? mobileNumber,
  int? reward,
}) {
  final firestoreData = serializers.toFirestore(
    DriversRecord.serializer,
    DriversRecord(
      (d) => d
        ..name = name
        ..displayPicture = displayPicture
        ..moneySpent = moneySpent
        ..trips = trips
        ..mobileNumber = mobileNumber
        ..reward = reward,
    ),
  );

  return firestoreData;
}
