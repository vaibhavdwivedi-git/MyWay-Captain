import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  @BuiltValueField(wireName: 'Bill')
  int? get bill;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  @BuiltValueField(wireName: 'Driver')
  String? get driver;

  @BuiltValueField(wireName: 'Outlet')
  String? get outlet;

  @BuiltValueField(wireName: 'Photo')
  String? get photo;

  @BuiltValueField(wireName: 'Verified')
  bool? get verified;

  @BuiltValueField(wireName: 'Approval')
  String? get approval;

  @BuiltValueField(wireName: 'DriverContact')
  String? get driverContact;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..bill = 0
    ..driver = ''
    ..outlet = ''
    ..photo = ''
    ..verified = false
    ..approval = ''
    ..driverContact = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransactionsRecordData({
  int? bill,
  DateTime? date,
  String? driver,
  String? outlet,
  String? photo,
  bool? verified,
  String? approval,
  String? driverContact,
}) {
  final firestoreData = serializers.toFirestore(
    TransactionsRecord.serializer,
    TransactionsRecord(
      (t) => t
        ..bill = bill
        ..date = date
        ..driver = driver
        ..outlet = outlet
        ..photo = photo
        ..verified = verified
        ..approval = approval
        ..driverContact = driverContact,
    ),
  );

  return firestoreData;
}
