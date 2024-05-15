import 'package:fast_food_app/constants/app_imports.dart';

class AppDefaults {
  static Future<bool?> defaultToast(String text) {
    return Fluttertoast.showToast(
      msg: text,
      backgroundColor: AppColors.darkGrayColor,
      textColor: AppColors.whiteColor,
      fontSize: 14.sp,
    );
  }
}
