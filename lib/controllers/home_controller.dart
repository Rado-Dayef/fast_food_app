import 'package:fast_food_app/constants/app_imports.dart';

class HomeController extends GetxController {
  RxInt index = RxInt(0);
  Map<String, List<BurgerModel>> burgerList = {
    AppStrings.dataJSONText: [
      BurgerModel(
        AppStrings.bigBeefyImage,
        price: 55,
        title: AppStrings.bigBeefyText,
        subTitle: AppStrings.hotBurgerText,
        description: AppStrings.burgerDescriptionText,
      ),
      BurgerModel(
        AppStrings.spicyChickenImage,
        price: 55,
        title: AppStrings.spicyChickenText,
        subTitle: AppStrings.hotBurgerText,
        description: AppStrings.burgerDescriptionText,
      ),
      BurgerModel(
        AppStrings.doubleStackImage,
        price: 55,
        title: AppStrings.doubleStackText,
        subTitle: AppStrings.hotBurgerText,
        description: AppStrings.burgerDescriptionText,
      ),
      BurgerModel(
        AppStrings.veggiePattyImage,
        price: 55,
        title: AppStrings.veggiePattyText,
        subTitle: AppStrings.hotBurgerText,
        description: AppStrings.burgerDescriptionText,
      ),
    ]
  };

  /// To navigate from the home screen to the details screen.
  void onBurgerItemClick(BurgerModel burger) {
    Get.toNamed(AppStrings.detailsRoute, arguments: burger);
  }
}
