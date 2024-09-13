// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UniversityImpl _$$UniversityImplFromJson(Map<String, dynamic> json) =>
    _$UniversityImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      coast: (json['coast'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UniversityImplToJson(_$UniversityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'coast': instance.coast,
    };
