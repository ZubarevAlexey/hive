// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

University _$UniversityFromJson(Map<String, dynamic> json) {
  return _University.fromJson(json);
}

/// @nodoc
mixin _$University {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int? get coast => throw _privateConstructorUsedError;

  /// Serializes this University to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of University
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UniversityCopyWith<University> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res, University>;
  @useResult
  $Res call({String name, String address, int? coast});
}

/// @nodoc
class _$UniversityCopyWithImpl<$Res, $Val extends University>
    implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of University
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? coast = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coast: freezed == coast
          ? _value.coast
          : coast // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UniversityImplCopyWith<$Res>
    implements $UniversityCopyWith<$Res> {
  factory _$$UniversityImplCopyWith(
          _$UniversityImpl value, $Res Function(_$UniversityImpl) then) =
      __$$UniversityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String address, int? coast});
}

/// @nodoc
class __$$UniversityImplCopyWithImpl<$Res>
    extends _$UniversityCopyWithImpl<$Res, _$UniversityImpl>
    implements _$$UniversityImplCopyWith<$Res> {
  __$$UniversityImplCopyWithImpl(
      _$UniversityImpl _value, $Res Function(_$UniversityImpl) _then)
      : super(_value, _then);

  /// Create a copy of University
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? coast = freezed,
  }) {
    return _then(_$UniversityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coast: freezed == coast
          ? _value.coast
          : coast // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UniversityImpl implements _University {
  const _$UniversityImpl(
      {required this.name, required this.address, this.coast});

  factory _$UniversityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UniversityImplFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final int? coast;

  @override
  String toString() {
    return 'University(name: $name, address: $address, coast: $coast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UniversityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coast, coast) || other.coast == coast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, address, coast);

  /// Create a copy of University
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UniversityImplCopyWith<_$UniversityImpl> get copyWith =>
      __$$UniversityImplCopyWithImpl<_$UniversityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UniversityImplToJson(
      this,
    );
  }
}

abstract class _University implements University {
  const factory _University(
      {required final String name,
      required final String address,
      final int? coast}) = _$UniversityImpl;

  factory _University.fromJson(Map<String, dynamic> json) =
      _$UniversityImpl.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  int? get coast;

  /// Create a copy of University
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UniversityImplCopyWith<_$UniversityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
