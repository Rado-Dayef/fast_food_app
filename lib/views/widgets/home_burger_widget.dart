import 'package:fast_food_app/constants/app_imports.dart';

class HomeBurgerWidget extends StatelessWidget {
  final BurgerModel burger;

  const HomeBurgerWidget(this.burger, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.h,
        bottom: 5.h,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGrayColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.darkGrayColor,
              offset: const Offset(0, 0),
              blurRadius: 8.sp,
              spreadRadius: 2.sp,
            ),
          ],
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 130.sp,
                width: 130.sp,
                child: Hero(
                  tag: burger.image,
                  child: Image.asset(burger.image),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Text(
                burger.title,
                style: AppFonts.font20White.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Text(
                burger.subTitle,
                style: AppFonts.font20White.copyWith(
                  color: AppColors.transparentWhiteColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.dollarSign + AppStrings.spaceSign + burger.price.toString(),
                    style: AppFonts.font20White.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.add_shopping_cart_rounded,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
