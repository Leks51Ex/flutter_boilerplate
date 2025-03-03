// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  AppThemeMode get mode => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;
  List<Language> get supportedLanguages => throw _privateConstructorUsedError;
  bool get manualTheme => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {AppThemeMode mode,
      Language language,
      List<Language> supportedLanguages,
      bool manualTheme});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = freezed,
    Object? language = freezed,
    Object? supportedLanguages = null,
    Object? manualTheme = null,
  }) {
    return _then(_value.copyWith(
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AppThemeMode,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      supportedLanguages: null == supportedLanguages
          ? _value.supportedLanguages
          : supportedLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      manualTheme: null == manualTheme
          ? _value.manualTheme
          : manualTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsInitialImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsInitialImplCopyWith(_$SettingsInitialImpl value,
          $Res Function(_$SettingsInitialImpl) then) =
      __$$SettingsInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppThemeMode mode,
      Language language,
      List<Language> supportedLanguages,
      bool manualTheme});
}

/// @nodoc
class __$$SettingsInitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsInitialImpl>
    implements _$$SettingsInitialImplCopyWith<$Res> {
  __$$SettingsInitialImplCopyWithImpl(
      _$SettingsInitialImpl _value, $Res Function(_$SettingsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = freezed,
    Object? language = freezed,
    Object? supportedLanguages = null,
    Object? manualTheme = null,
  }) {
    return _then(_$SettingsInitialImpl(
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AppThemeMode,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      supportedLanguages: null == supportedLanguages
          ? _value._supportedLanguages
          : supportedLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      manualTheme: null == manualTheme
          ? _value.manualTheme
          : manualTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsInitialImpl extends _SettingsInitial {
  const _$SettingsInitialImpl(
      {required this.mode,
      required this.language,
      required final List<Language> supportedLanguages,
      this.manualTheme = false})
      : _supportedLanguages = supportedLanguages,
        super._();

  @override
  final AppThemeMode mode;
  @override
  final Language language;
  final List<Language> _supportedLanguages;
  @override
  List<Language> get supportedLanguages {
    if (_supportedLanguages is EqualUnmodifiableListView)
      return _supportedLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedLanguages);
  }

  @override
  @JsonKey()
  final bool manualTheme;

  @override
  String toString() {
    return 'SettingsState(mode: $mode, language: $language, supportedLanguages: $supportedLanguages, manualTheme: $manualTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsInitialImpl &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other._supportedLanguages, _supportedLanguages) &&
            (identical(other.manualTheme, manualTheme) ||
                other.manualTheme == manualTheme));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(_supportedLanguages),
      manualTheme);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsInitialImplCopyWith<_$SettingsInitialImpl> get copyWith =>
      __$$SettingsInitialImplCopyWithImpl<_$SettingsInitialImpl>(
          this, _$identity);
}

abstract class _SettingsInitial extends SettingsState {
  const factory _SettingsInitial(
      {required final AppThemeMode mode,
      required final Language language,
      required final List<Language> supportedLanguages,
      final bool manualTheme}) = _$SettingsInitialImpl;
  const _SettingsInitial._() : super._();

  @override
  AppThemeMode get mode;
  @override
  Language get language;
  @override
  List<Language> get supportedLanguages;
  @override
  bool get manualTheme;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsInitialImplCopyWith<_$SettingsInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
