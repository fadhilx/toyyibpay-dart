import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'categories.g.dart';

@JsonSerializable()
class Categories {
      Categories();

  Category categories;

  factory Categories.fromJson(Map<String,dynamic> json) => _$CategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}