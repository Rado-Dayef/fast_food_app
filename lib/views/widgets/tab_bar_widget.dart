import 'package:fast_food_app/constants/app_imports.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final bool? isIndexTrue;
  final VoidCallback? onClick;

  const TabBarWidget(
    this.title, {
    this.onClick,
    this.isIndexTrue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick ?? () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
      child: SizedBox(
        height: 30.h,
        width: 75.w,
        child: Column(
          children: [
            Text(
              title,
              style: AppFonts.font20White.copyWith(
                color: isIndexTrue ?? false ? AppColors.whiteColor : AppColors.transparentWhiteColor,
                fontSize: isIndexTrue ?? false ? null : 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
