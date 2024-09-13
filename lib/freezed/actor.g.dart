// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorImpl _$$ActorImplFromJson(Map<String, dynamic> json) => _$ActorImpl(
      name: json['name'] as String,
      age: (json['age'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ActorImplToJson(_$ActorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
    };
