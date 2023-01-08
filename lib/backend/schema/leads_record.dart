import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'leads_record.g.dart';

abstract class LeadsRecord implements Built<LeadsRecord, LeadsRecordBuilder> {
  static Serializer<LeadsRecord> get serializer => _$leadsRecordSerializer;

  String? get name;

  String? get mobile;

  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LeadsRecordBuilder builder) => builder
    ..name = ''
    ..mobile = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leads');

  static Stream<LeadsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LeadsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LeadsRecord._();
  factory LeadsRecord([void Function(LeadsRecordBuilder) updates]) =
      _$LeadsRecord;

  static LeadsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLeadsRecordData({
  String? name,
  String? mobile,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    LeadsRecord.serializer,
    LeadsRecord(
      (l) => l
        ..name = name
        ..mobile = mobile
        ..time = time,
    ),
  );

  return firestoreData;
}
