// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesSearchEvent {
  String get query => throw _privateConstructorUsedError;
  String get apiKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String apiKey) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, String apiKey)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String apiKey)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchMovies value) searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchMovies value)? searchMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchMovies value)? searchMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesSearchEventCopyWith<MoviesSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesSearchEventCopyWith<$Res> {
  factory $MoviesSearchEventCopyWith(
          MoviesSearchEvent value, $Res Function(MoviesSearchEvent) then) =
      _$MoviesSearchEventCopyWithImpl<$Res>;
  $Res call({String query, String apiKey});
}

/// @nodoc
class _$MoviesSearchEventCopyWithImpl<$Res>
    implements $MoviesSearchEventCopyWith<$Res> {
  _$MoviesSearchEventCopyWithImpl(this._value, this._then);

  final MoviesSearchEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesSearchEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? apiKey = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$SearchMoviesCopyWith<$Res>
    implements $MoviesSearchEventCopyWith<$Res> {
  factory _$$SearchMoviesCopyWith(
          _$SearchMovies value, $Res Function(_$SearchMovies) then) =
      __$$SearchMoviesCopyWithImpl<$Res>;
  @override
  $Res call({String query, String apiKey});
}

/// @nodoc
class __$$SearchMoviesCopyWithImpl<$Res>
    extends _$MoviesSearchEventCopyWithImpl<$Res>
    implements _$$SearchMoviesCopyWith<$Res> {
  __$$SearchMoviesCopyWithImpl(
      _$SearchMovies _value, $Res Function(_$SearchMovies) _then)
      : super(_value, (v) => _then(v as _$SearchMovies));

  @override
  _$SearchMovies get _value => super._value as _$SearchMovies;

  @override
  $Res call({
    Object? query = freezed,
    Object? apiKey = freezed,
  }) {
    return _then(_$SearchMovies(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovies implements SearchMovies {
  const _$SearchMovies({required this.query, required this.apiKey});

  @override
  final String query;
  @override
  final String apiKey;

  @override
  String toString() {
    return 'MoviesSearchEvent.searchMovies(query: $query, apiKey: $apiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovies &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.apiKey, apiKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(apiKey));

  @JsonKey(ignore: true)
  @override
  _$$SearchMoviesCopyWith<_$SearchMovies> get copyWith =>
      __$$SearchMoviesCopyWithImpl<_$SearchMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, String apiKey) searchMovies,
  }) {
    return searchMovies(query, apiKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, String apiKey)? searchMovies,
  }) {
    return searchMovies?.call(query, apiKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, String apiKey)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(query, apiKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchMovies value) searchMovies,
  }) {
    return searchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchMovies value)? searchMovies,
  }) {
    return searchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchMovies value)? searchMovies,
    required TResult orElse(),
  }) {
    if (searchMovies != null) {
      return searchMovies(this);
    }
    return orElse();
  }
}

abstract class SearchMovies implements MoviesSearchEvent {
  const factory SearchMovies(
      {required final String query,
      required final String apiKey}) = _$SearchMovies;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  String get apiKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SearchMoviesCopyWith<_$SearchMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingSearchState,
    required TResult Function(List<Movie> movies) loadedSearchState,
    required TResult Function(String message) errorSearch,
    required TResult Function() initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchState value) loadingSearchState,
    required TResult Function(LoadedSearchState value) loadedSearchState,
    required TResult Function(ErrorSearch value) errorSearch,
    required TResult Function(InitialState value) initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesSearchStateCopyWith<$Res> {
  factory $MoviesSearchStateCopyWith(
          MoviesSearchState value, $Res Function(MoviesSearchState) then) =
      _$MoviesSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesSearchStateCopyWithImpl<$Res>
    implements $MoviesSearchStateCopyWith<$Res> {
  _$MoviesSearchStateCopyWithImpl(this._value, this._then);

  final MoviesSearchState _value;
  // ignore: unused_field
  final $Res Function(MoviesSearchState) _then;
}

/// @nodoc
abstract class _$$LoadingSearchStateCopyWith<$Res> {
  factory _$$LoadingSearchStateCopyWith(_$LoadingSearchState value,
          $Res Function(_$LoadingSearchState) then) =
      __$$LoadingSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSearchStateCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res>
    implements _$$LoadingSearchStateCopyWith<$Res> {
  __$$LoadingSearchStateCopyWithImpl(
      _$LoadingSearchState _value, $Res Function(_$LoadingSearchState) _then)
      : super(_value, (v) => _then(v as _$LoadingSearchState));

  @override
  _$LoadingSearchState get _value => super._value as _$LoadingSearchState;
}

/// @nodoc

class _$LoadingSearchState implements LoadingSearchState {
  const _$LoadingSearchState();

  @override
  String toString() {
    return 'MoviesSearchState.loadingSearchState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingSearchState,
    required TResult Function(List<Movie> movies) loadedSearchState,
    required TResult Function(String message) errorSearch,
    required TResult Function() initialState,
  }) {
    return loadingSearchState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
  }) {
    return loadingSearchState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
    required TResult orElse(),
  }) {
    if (loadingSearchState != null) {
      return loadingSearchState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchState value) loadingSearchState,
    required TResult Function(LoadedSearchState value) loadedSearchState,
    required TResult Function(ErrorSearch value) errorSearch,
    required TResult Function(InitialState value) initialState,
  }) {
    return loadingSearchState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
  }) {
    return loadingSearchState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
    required TResult orElse(),
  }) {
    if (loadingSearchState != null) {
      return loadingSearchState(this);
    }
    return orElse();
  }
}

abstract class LoadingSearchState implements MoviesSearchState {
  const factory LoadingSearchState() = _$LoadingSearchState;
}

/// @nodoc
abstract class _$$LoadedSearchStateCopyWith<$Res> {
  factory _$$LoadedSearchStateCopyWith(
          _$LoadedSearchState value, $Res Function(_$LoadedSearchState) then) =
      __$$LoadedSearchStateCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$LoadedSearchStateCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res>
    implements _$$LoadedSearchStateCopyWith<$Res> {
  __$$LoadedSearchStateCopyWithImpl(
      _$LoadedSearchState _value, $Res Function(_$LoadedSearchState) _then)
      : super(_value, (v) => _then(v as _$LoadedSearchState));

  @override
  _$LoadedSearchState get _value => super._value as _$LoadedSearchState;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_$LoadedSearchState(
      movies: movies == freezed
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$LoadedSearchState implements LoadedSearchState {
  const _$LoadedSearchState({required final List<Movie> movies})
      : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MoviesSearchState.loadedSearchState(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchState &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  _$$LoadedSearchStateCopyWith<_$LoadedSearchState> get copyWith =>
      __$$LoadedSearchStateCopyWithImpl<_$LoadedSearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingSearchState,
    required TResult Function(List<Movie> movies) loadedSearchState,
    required TResult Function(String message) errorSearch,
    required TResult Function() initialState,
  }) {
    return loadedSearchState(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
  }) {
    return loadedSearchState?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
    required TResult orElse(),
  }) {
    if (loadedSearchState != null) {
      return loadedSearchState(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchState value) loadingSearchState,
    required TResult Function(LoadedSearchState value) loadedSearchState,
    required TResult Function(ErrorSearch value) errorSearch,
    required TResult Function(InitialState value) initialState,
  }) {
    return loadedSearchState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
  }) {
    return loadedSearchState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
    required TResult orElse(),
  }) {
    if (loadedSearchState != null) {
      return loadedSearchState(this);
    }
    return orElse();
  }
}

abstract class LoadedSearchState implements MoviesSearchState {
  const factory LoadedSearchState({required final List<Movie> movies}) =
      _$LoadedSearchState;

  List<Movie> get movies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadedSearchStateCopyWith<_$LoadedSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSearchCopyWith<$Res> {
  factory _$$ErrorSearchCopyWith(
          _$ErrorSearch value, $Res Function(_$ErrorSearch) then) =
      __$$ErrorSearchCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorSearchCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res>
    implements _$$ErrorSearchCopyWith<$Res> {
  __$$ErrorSearchCopyWithImpl(
      _$ErrorSearch _value, $Res Function(_$ErrorSearch) _then)
      : super(_value, (v) => _then(v as _$ErrorSearch));

  @override
  _$ErrorSearch get _value => super._value as _$ErrorSearch;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorSearch(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSearch implements ErrorSearch {
  const _$ErrorSearch({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MoviesSearchState.errorSearch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSearch &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorSearchCopyWith<_$ErrorSearch> get copyWith =>
      __$$ErrorSearchCopyWithImpl<_$ErrorSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingSearchState,
    required TResult Function(List<Movie> movies) loadedSearchState,
    required TResult Function(String message) errorSearch,
    required TResult Function() initialState,
  }) {
    return errorSearch(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
  }) {
    return errorSearch?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
    required TResult orElse(),
  }) {
    if (errorSearch != null) {
      return errorSearch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchState value) loadingSearchState,
    required TResult Function(LoadedSearchState value) loadedSearchState,
    required TResult Function(ErrorSearch value) errorSearch,
    required TResult Function(InitialState value) initialState,
  }) {
    return errorSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
  }) {
    return errorSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
    required TResult orElse(),
  }) {
    if (errorSearch != null) {
      return errorSearch(this);
    }
    return orElse();
  }
}

abstract class ErrorSearch implements MoviesSearchState {
  const factory ErrorSearch({required final String message}) = _$ErrorSearch;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ErrorSearchCopyWith<_$ErrorSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, (v) => _then(v as _$InitialState));

  @override
  _$InitialState get _value => super._value as _$InitialState;
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'MoviesSearchState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingSearchState,
    required TResult Function(List<Movie> movies) loadedSearchState,
    required TResult Function(String message) errorSearch,
    required TResult Function() initialState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingSearchState,
    TResult Function(List<Movie> movies)? loadedSearchState,
    TResult Function(String message)? errorSearch,
    TResult Function()? initialState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchState value) loadingSearchState,
    required TResult Function(LoadedSearchState value) loadedSearchState,
    required TResult Function(ErrorSearch value) errorSearch,
    required TResult Function(InitialState value) initialState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchState value)? loadingSearchState,
    TResult Function(LoadedSearchState value)? loadedSearchState,
    TResult Function(ErrorSearch value)? errorSearch,
    TResult Function(InitialState value)? initialState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements MoviesSearchState {
  const factory InitialState() = _$InitialState;
}
