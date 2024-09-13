// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charcoal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Charcoal _$CharcoalFromJson(Map<String, dynamic> json) {
  return _Charcoal.fromJson(json);
}

/// @nodoc
mixin _$Charcoal {
  String get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  /// Serializes this Charcoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Charcoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharcoalCopyWith<Charcoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharcoalCopyWith<$Res> {
  factory $CharcoalCopyWith(Charcoal value, $Res Function(Charcoal) then) =
      _$CharcoalCopyWithImpl<$Res, Charcoal>;
  @useResult
  $Res call({String name, int? price});
}

/// @nodoc
class _$CharcoalCopyWithImpl<$Res, $Val extends Charcoal>
    implements $CharcoalCopyWith<$Res> {
  _$CharcoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Charcoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharcoalImplCopyWith<$Res>
    implements $CharcoalCopyWith<$Res> {
  factory _$$CharcoalImplCopyWith(
          _$CharcoalImpl value, $Res Function(_$CharcoalImpl) then) =
      __$$CharcoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int? price});
}

/// @nodoc
class __$$CharcoalImplCopyWithImpl<$Res>
    extends _$CharcoalCopyWithImpl<$Res, _$CharcoalImpl>
    implements _$$CharcoalImplCopyWith<$Res> {
  __$$CharcoalImplCopyWithImpl(
      _$CharcoalImpl _value, $Res Function(_$CharcoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Charcoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = freezed,
  }) {
    return _then(_$CharcoalImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharcoalImpl implements _Charcoal {
  const _$CharcoalImpl({required this.name, this.price});

  factory _$CharcoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharcoalImplFromJson(json);

  @override
  final String name;
  @override
  final int? price;

  @override
  String toString() {
    return 'Charcoal(name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharcoalImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, price);

  /// Create a copy of Charcoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharcoalImplCopyWith<_$CharcoalImpl> get copyWith =>
      __$$CharcoalImplCopyWithImpl<_$CharcoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharcoalImplToJson(
      this,
    );
  }
}

abstract class _Charcoal implements Charcoal {
  const factory _Charcoal({required final String name, final int? price}) =
      _$CharcoalImpl;

  factory _Charcoal.fromJson(Map<String, dynamic> json) =
      _$CharcoalImpl.fromJson;

  @override
  String get name;
  @override
  int? get price;

  /// Create a copy of Charcoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharcoalImplCopyWith<_$CharcoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
