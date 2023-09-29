// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cm_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CmUserImpl _$$CmUserImplFromJson(Map<String, dynamic> json) => _$CmUserImpl(
      id: json['id'] as String,
      photoUrl: json['photoUrl'] as String,
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$CmUserImplToJson(_$CmUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrl': instance.photoUrl,
      'displayName': instance.displayName,
      'email': instance.email,
      'status': instance.status,
    };
