// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_conditions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TermsModel _$TermsModelFromJson(Map<String, dynamic> json) => TermsModel(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$TermsModelToJson(TermsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };
