// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMovies value) fetchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchMovies value)? fetchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMovies value)? fetchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res> implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  final MoviesEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesEvent) _then;
}

/// @nodoc
abstract class _$$FetchMoviesCopyWith<$Res> {
  factory _$$FetchMoviesCopyWith(
          _$FetchMovies value, $Res Function(_$FetchMovies) then) =
      __$$FetchMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoviesCopyWithImpl<$Res> extends _$MoviesEventCopyWithImpl<$Res>
    implements _$$FetchMoviesCopyWith<$Res> {
  __$$FetchMoviesCopyWithImpl(
      _$FetchMovies _value, $Res Function(_$FetchMovies) _then)
      : super(_value, (v) => _then(v as _$FetchMovies));

  @override
  _$FetchMovies get _value => super._value as _$FetchMovies;
}

/// @nodoc

class _$FetchMovies implements FetchMovies {
  const _$FetchMovies();

  @override
  String toString() {
    return 'MoviesEvent.fetchMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
  }) {
    return fetchMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchMovies,
  }) {
    return fetchMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    required TResult orElse(),
  }) {
    if (fetchMovies != null) {
      return fetchMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchMovies value) fetchMovies,
  }) {
    return fetchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchMovies value)? fetchMovies,
  }) {
    return fetchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchMovies value)? fetchMovies,
    required TResult orElse(),
  }) {
    if (fetchMovies != null) {
      return fetchMovies(this);
    }
    return orElse();
  }
}

abstract class FetchMovies implements MoviesEvent {
  const factory FetchMovies() = _$FetchMovies;
}

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(String message) errorFetching,
    required TResult Function(List<Movie> movies) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorFetching value) errorFetching,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, (v) => _then(v as _$LoadingState));

  @override
  _$LoadingState get _value => super._value as _$LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'MovieState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(String message) errorFetching,
    required TResult Function(List<Movie> movies) loaded,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorFetching value) errorFetching,
    required TResult Function(Loaded value) loaded,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements MovieState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$ErrorFetchingCopyWith<$Res> {
  factory _$$ErrorFetchingCopyWith(
          _$ErrorFetching value, $Res Function(_$ErrorFetching) then) =
      __$$ErrorFetchingCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorFetchingCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$$ErrorFetchingCopyWith<$Res> {
  __$$ErrorFetchingCopyWithImpl(
      _$ErrorFetching _value, $Res Function(_$ErrorFetching) _then)
      : super(_value, (v) => _then(v as _$ErrorFetching));

  @override
  _$ErrorFetching get _value => super._value as _$ErrorFetching;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorFetching(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFetching implements ErrorFetching {
  const _$ErrorFetching({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MovieState.errorFetching(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorFetching &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorFetchingCopyWith<_$ErrorFetching> get copyWith =>
      __$$ErrorFetchingCopyWithImpl<_$ErrorFetching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(String message) errorFetching,
    required TResult Function(List<Movie> movies) loaded,
  }) {
    return errorFetching(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
  }) {
    return errorFetching?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
    required TResult orElse(),
  }) {
    if (errorFetching != null) {
      return errorFetching(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorFetching value) errorFetching,
    required TResult Function(Loaded value) loaded,
  }) {
    return errorFetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
  }) {
    return errorFetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (errorFetching != null) {
      return errorFetching(this);
    }
    return orElse();
  }
}

abstract class ErrorFetching implements MovieState {
  const factory ErrorFetching({required final String message}) =
      _$ErrorFetching;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ErrorFetchingCopyWith<_$ErrorFetching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_$Loaded(
      movies: movies == freezed
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required final List<Movie> movies}) : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MovieState.loaded(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(String message) errorFetching,
    required TResult Function(List<Movie> movies) loaded,
  }) {
    return loaded(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
  }) {
    return loaded?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(String message)? errorFetching,
    TResult Function(List<Movie> movies)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(ErrorFetching value) errorFetching,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loadingState,
    TResult Function(ErrorFetching value)? errorFetching,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MovieState {
  const factory Loaded({required final List<Movie> movies}) = _$Loaded;

  List<Movie> get movies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
