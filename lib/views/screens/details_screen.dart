import 'package:fast_food_app/constants/app_imports.dart';

class DetailsScreen extends GetWidget<DetailsController> {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            right: 15.w,
            bottom: 100.h,
            left: 15.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 15.h,
                  bottom: 50.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: Get.back,
                      child: Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: AppColors.whiteColor,
                        size: 40.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                      child: Icon(
                        Icons.shopping_cart_rounded,
                        color: AppColors.whiteColor,
                        size: 25.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Hero(
                  tag: controller.burgerFromArguments.image,
                  child: Image.asset(
                    controller.burgerFromArguments.image,
                  ),
                ),
              ),
              const GapWidget(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.burgerFromArguments.title,
                    style: AppFonts.font20White.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: controller.onMinusOneFromCount,
                        child: Container(
                          height: 25.sp,
                          width: 25.sp,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5.sp),
                          ),
                          child: Text(
                            AppStrings.minusSign,
                            style: AppFonts.font20White.copyWith(
                              color: AppColors.lightGrayColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const GapWidget(10),
                      Obx(
                        () {
                          return Text(
                            controller.count.value.toString(),
                            style: AppFonts.font20White.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp,
                            ),
                          );
                        },
                      ),
                      const GapWidget(10),
                      InkWell(
                        onTap: controller.onPlusOneToCount,
                        child: Container(
                          height: 25.sp,
                          width: 25.sp,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(5.sp),
                          ),
                          child: Text(
                            AppStrings.plusSign,
                            style: AppFonts.font20White.copyWith(
                              color: AppColors.lightGrayColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const GapWidget(20),
              Text(
                AppStrings.burgerDetailsText,
                style: AppFonts.font20White.copyWith(
                  color: AppColors.transparentWhiteColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          color: AppColors.lightGrayColor,
          width: double.infinity,
          height: 100.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.totalPriceText,
                    style: AppFonts.font20White.copyWith(
                      color: AppColors.transparentWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Obx(
                    () {
                      return Text(
                        AppStrings.dollarSign + AppStrings.spaceSign + controller.totalPrice.value.toString(),
                        style: AppFonts.font20White.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                      );
                    },
                  ),
                ],
              ),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Container(
                  height: 50.sp,
                  width: 125.sp,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.sp),
                      bottomRight: Radius.circular(15.sp),
                      bottomLeft: Radius.circular(15.sp),
                      topLeft: Radius.circular(0.sp),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        AppStrings.buyNowText,
                        style: AppFonts.font20White.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
