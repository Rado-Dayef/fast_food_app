import 'package:fast_food_app/constants/app_imports.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final bool isIndexTrue;

  const TabBarWidget(
    this.title, {
    required this.isIndexTrue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 75.w,
      child: Column(
        children: [
          Text(
            title,
            style: AppFonts.font20White.copyWith(
              color: isIndexTrue ? AppColors.whiteColor : AppColors.transparentWhiteColor,
              fontSize: isIndexTrue ? null : 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
