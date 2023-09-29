// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cm_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CmUser _$CmUserFromJson(Map<String, dynamic> json) {
  return _CmUser.fromJson(json);
}

/// @nodoc
mixin _$CmUser {
  String get id => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CmUserCopyWith<CmUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CmUserCopyWith<$Res> {
  factory $CmUserCopyWith(CmUser value, $Res Function(CmUser) then) =
      _$CmUserCopyWithImpl<$Res, CmUser>;
  @useResult
  $Res call(
      {String id,
      String photoUrl,
      String displayName,
      String email,
      String status});
}

/// @nodoc
class _$CmUserCopyWithImpl<$Res, $Val extends CmUser>
    implements $CmUserCopyWith<$Res> {
  _$CmUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = null,
    Object? displayName = null,
    Object? email = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CmUserImplCopyWith<$Res> implements $CmUserCopyWith<$Res> {
  factory _$$CmUserImplCopyWith(
          _$CmUserImpl value, $Res Function(_$CmUserImpl) then) =
      __$$CmUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String photoUrl,
      String displayName,
      String email,
      String status});
}

/// @nodoc
class __$$CmUserImplCopyWithImpl<$Res>
    extends _$CmUserCopyWithImpl<$Res, _$CmUserImpl>
    implements _$$CmUserImplCopyWith<$Res> {
  __$$CmUserImplCopyWithImpl(
      _$CmUserImpl _value, $Res Function(_$CmUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = null,
    Object? displayName = null,
    Object? email = null,
    Object? status = null,
  }) {
    return _then(_$CmUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CmUserImpl with DiagnosticableTreeMixin implements _CmUser {
  const _$CmUserImpl(
      {required this.id,
      required this.photoUrl,
      required this.displayName,
      required this.email,
      required this.status});

  factory _$CmUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$CmUserImplFromJson(json);

  @override
  final String id;
  @override
  final String photoUrl;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CmUser(id: $id, photoUrl: $photoUrl, displayName: $displayName, email: $email, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CmUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CmUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, photoUrl, displayName, email, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CmUserImplCopyWith<_$CmUserImpl> get copyWith =>
      __$$CmUserImplCopyWithImpl<_$CmUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CmUserImplToJson(
      this,
    );
  }
}

abstract class _CmUser implements CmUser {
  const factory _CmUser(
      {required final String id,
      required final String photoUrl,
      required final String displayName,
      required final String email,
      required final String status}) = _$CmUserImpl;

  factory _CmUser.fromJson(Map<String, dynamic> json) = _$CmUserImpl.fromJson;

  @override
  String get id;
  @override
  String get photoUrl;
  @override
  String get displayName;
  @override
  String get email;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$CmUserImplCopyWith<_$CmUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
