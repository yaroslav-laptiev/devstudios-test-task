// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_data.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingDataEntity {
  String? get name;
  ZodiacSign? get zodiacSign;
  DateTime? get birthdate;

  /// Create a copy of OnboardingDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnboardingDataEntityCopyWith<OnboardingDataEntity> get copyWith =>
      _$OnboardingDataEntityCopyWithImpl<OnboardingDataEntity>(
          this as OnboardingDataEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingDataEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.zodiacSign, zodiacSign) ||
                other.zodiacSign == zodiacSign) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, zodiacSign, birthdate);

  @override
  String toString() {
    return 'OnboardingDataEntity(name: $name, zodiacSign: $zodiacSign, birthdate: $birthdate)';
  }
}

/// @nodoc
abstract mixin class $OnboardingDataEntityCopyWith<$Res> {
  factory $OnboardingDataEntityCopyWith(OnboardingDataEntity value,
          $Res Function(OnboardingDataEntity) _then) =
      _$OnboardingDataEntityCopyWithImpl;
  @useResult
  $Res call({String? name, ZodiacSign? zodiacSign, DateTime? birthdate});
}

/// @nodoc
class _$OnboardingDataEntityCopyWithImpl<$Res>
    implements $OnboardingDataEntityCopyWith<$Res> {
  _$OnboardingDataEntityCopyWithImpl(this._self, this._then);

  final OnboardingDataEntity _self;
  final $Res Function(OnboardingDataEntity) _then;

  /// Create a copy of OnboardingDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? zodiacSign = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      zodiacSign: freezed == zodiacSign
          ? _self.zodiacSign
          : zodiacSign // ignore: cast_nullable_to_non_nullable
              as ZodiacSign?,
      birthdate: freezed == birthdate
          ? _self.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _OnboardingDataEntity implements OnboardingDataEntity {
  const _OnboardingDataEntity({this.name, this.zodiacSign, this.birthdate});

  @override
  final String? name;
  @override
  final ZodiacSign? zodiacSign;
  @override
  final DateTime? birthdate;

  /// Create a copy of OnboardingDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnboardingDataEntityCopyWith<_OnboardingDataEntity> get copyWith =>
      __$OnboardingDataEntityCopyWithImpl<_OnboardingDataEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnboardingDataEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.zodiacSign, zodiacSign) ||
                other.zodiacSign == zodiacSign) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, zodiacSign, birthdate);

  @override
  String toString() {
    return 'OnboardingDataEntity(name: $name, zodiacSign: $zodiacSign, birthdate: $birthdate)';
  }
}

/// @nodoc
abstract mixin class _$OnboardingDataEntityCopyWith<$Res>
    implements $OnboardingDataEntityCopyWith<$Res> {
  factory _$OnboardingDataEntityCopyWith(_OnboardingDataEntity value,
          $Res Function(_OnboardingDataEntity) _then) =
      __$OnboardingDataEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, ZodiacSign? zodiacSign, DateTime? birthdate});
}

/// @nodoc
class __$OnboardingDataEntityCopyWithImpl<$Res>
    implements _$OnboardingDataEntityCopyWith<$Res> {
  __$OnboardingDataEntityCopyWithImpl(this._self, this._then);

  final _OnboardingDataEntity _self;
  final $Res Function(_OnboardingDataEntity) _then;

  /// Create a copy of OnboardingDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? zodiacSign = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_OnboardingDataEntity(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      zodiacSign: freezed == zodiacSign
          ? _self.zodiacSign
          : zodiacSign // ignore: cast_nullable_to_non_nullable
              as ZodiacSign?,
      birthdate: freezed == birthdate
          ? _self.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
