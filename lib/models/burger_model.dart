import 'package:fast_food_app/constants/app_imports.dart';

class BurgerModel {
  final String image;
  final String title;
  final double price;
  final String subTitle;

  BurgerModel(
    this.image, {
    required this.title,
    required this.price,
    required this.subTitle,
  });

  factory BurgerModel.fromJson(Map<String, dynamic> json) {
    return BurgerModel(
      json[AppStrings.imageJSONText],
      title: json[AppStrings.titleJSONText],
      subTitle: json[AppStrings.subTitleJSONText],
      price: json[AppStrings.priceJSONText].toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        AppStrings.imageJSONText: image,
        AppStrings.titleJSONText: title,
        AppStrings.priceJSONText: price,
        AppStrings.subTitleJSONText: subTitle,
      };
}
