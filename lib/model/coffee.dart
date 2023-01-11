import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee.freezed.dart';
part 'coffee.g.dart';

@freezed
class Coffee with _$Coffee {
  const factory Coffee({
    String? title,
    String? description,
    List<String>? ingredients,
    String? image,
    int? id,
  }) = _Coffee;

  factory Coffee.fromJson(Map<String, dynamic> json) => _$CoffeeFromJson(json);
}
