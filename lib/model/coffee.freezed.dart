// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coffee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coffee _$CoffeeFromJson(Map<String, dynamic> json) {
  return _Coffee.fromJson(json);
}

/// @nodoc
class _$CoffeeTearOff {
  const _$CoffeeTearOff();

  _Coffee call(
      {String? title,
      String? description,
      List<String>? ingredients,
      String? image,
      int? id}) {
    return _Coffee(
      title: title,
      description: description,
      ingredients: ingredients,
      image: image,
      id: id,
    );
  }

  Coffee fromJson(Map<String, Object> json) {
    return Coffee.fromJson(json);
  }
}

/// @nodoc
const $Coffee = _$CoffeeTearOff();

/// @nodoc
mixin _$Coffee {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get ingredients => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeeCopyWith<Coffee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeCopyWith<$Res> {
  factory $CoffeeCopyWith(Coffee value, $Res Function(Coffee) then) =
      _$CoffeeCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? description,
      List<String>? ingredients,
      String? image,
      int? id});
}

/// @nodoc
class _$CoffeeCopyWithImpl<$Res> implements $CoffeeCopyWith<$Res> {
  _$CoffeeCopyWithImpl(this._value, this._then);

  final Coffee _value;
  // ignore: unused_field
  final $Res Function(Coffee) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? ingredients = freezed,
    Object? image = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CoffeeCopyWith<$Res> implements $CoffeeCopyWith<$Res> {
  factory _$CoffeeCopyWith(_Coffee value, $Res Function(_Coffee) then) =
      __$CoffeeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? description,
      List<String>? ingredients,
      String? image,
      int? id});
}

/// @nodoc
class __$CoffeeCopyWithImpl<$Res> extends _$CoffeeCopyWithImpl<$Res>
    implements _$CoffeeCopyWith<$Res> {
  __$CoffeeCopyWithImpl(_Coffee _value, $Res Function(_Coffee) _then)
      : super(_value, (v) => _then(v as _Coffee));

  @override
  _Coffee get _value => super._value as _Coffee;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? ingredients = freezed,
    Object? image = freezed,
    Object? id = freezed,
  }) {
    return _then(_Coffee(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coffee implements _Coffee {
  const _$_Coffee(
      {this.title, this.description, this.ingredients, this.image, this.id});

  factory _$_Coffee.fromJson(Map<String, dynamic> json) =>
      _$_$_CoffeeFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final List<String>? ingredients;
  @override
  final String? image;
  @override
  final int? id;

  @override
  String toString() {
    return 'Coffee(title: $title, description: $description, ingredients: $ingredients, image: $image, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coffee &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(ingredients) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$CoffeeCopyWith<_Coffee> get copyWith =>
      __$CoffeeCopyWithImpl<_Coffee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoffeeToJson(this);
  }
}

abstract class _Coffee implements Coffee {
  const factory _Coffee(
      {String? title,
      String? description,
      List<String>? ingredients,
      String? image,
      int? id}) = _$_Coffee;

  factory _Coffee.fromJson(Map<String, dynamic> json) = _$_Coffee.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<String>? get ingredients => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoffeeCopyWith<_Coffee> get copyWith => throw _privateConstructorUsedError;
}
