import 'package:fast_food_app/constants/app_imports.dart';

class DetailsController extends GetxController {
  BurgerModel burgerFromArguments = Get.arguments;
  RxInt count = RxInt(2);
  RxDouble totalPrice = RxDouble(110.0);

  /// To increment the count with one and multiply it with the price.
  void onPlusOneToCount() {
    count.value++;
    totalPrice.value = count.value * 55.0;
  }

  /// To decrement the count with one and multiply it with the price if its not equal one or less, But if the count equal one or less display toast to worn the user.
  void onMinusOneFromCount() {
    count.value == 1 ? AppDefaults.defaultToast(AppStrings.countCanNotBeLessThenOneToast) : count.value--;
    totalPrice.value = count.value * 55.0;
  }

  /// To navigate from the details screen to the cart screen.
  void onAddToCartOrBuyNowClick() {
    Get.toNamed(AppStrings.cartRoute, arguments: [burgerFromArguments, count, totalPrice]);
  }
}
