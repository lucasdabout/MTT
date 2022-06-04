import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alarme_record.g.dart';

abstract class AlarmeRecord
    implements Built<AlarmeRecord, AlarmeRecordBuilder> {
  static Serializer<AlarmeRecord> get serializer => _$alarmeRecordSerializer;

  @nullable
  int get heure;

  @nullable
  String get minutes;

  @nullable
  String get jours;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AlarmeRecordBuilder builder) => builder
    ..heure = 0
    ..minutes = ''
    ..jours = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alarme');

  static Stream<AlarmeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AlarmeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AlarmeRecord._();
  factory AlarmeRecord([void Function(AlarmeRecordBuilder) updates]) =
      _$AlarmeRecord;

  static AlarmeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAlarmeRecordData({
  int heure,
  String minutes,
  String jours,
}) =>
    serializers.toFirestore(
        AlarmeRecord.serializer,
        AlarmeRecord((a) => a
          ..heure = heure
          ..minutes = minutes
          ..jours = jours));
