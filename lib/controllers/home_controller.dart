import 'dart:convert';

import 'package:fast_food_app/constants/app_imports.dart';

class HomeController extends GetxController {
  RxInt index = RxInt(0);
  List<BurgerModel> burgerList = [];

  /// To navigate from the home screen to the details screen.
  void onBurgerItemClick(BurgerModel burger) {
    Get.toNamed(AppStrings.detailsRoute, arguments: burger);
  }

  /// To load the burger data from the JSON file.
  Future<void> loadBurgerData() async {
    try {
      String jsonString = await rootBundle.loadString(AppStrings.burgerJSON);
      List<dynamic> jsonList = jsonDecode(jsonString);
      await Future.delayed(
        /// To create a delay with two second before assign the data into the list to display the shimmer animation.
        const Duration(
          seconds: 2,
        ),
        () => burgerList = jsonList.map((json) => BurgerModel.fromJson(json)).toList(),
      );
    } catch (e) {
      AppDefaults.defaultToast(e.toString());
    }
  }
}
