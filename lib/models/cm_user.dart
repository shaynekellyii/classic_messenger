import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cm_user.freezed.dart';
part 'cm_user.g.dart';

@freezed
class CmUser with _$CmUser {
  const factory CmUser({
    required String id,
    required String photoUrl,
    required String displayName,
    required String email,
    required String status,
  }) = _CmUser;

  factory CmUser.fromJson(Map<String, Object?> json) => _$CmUserFromJson(json);
}
