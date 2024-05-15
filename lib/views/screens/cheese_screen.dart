import 'package:fast_food_app/constants/app_imports.dart';

class CheeseScreen extends StatelessWidget {
  const CheeseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.cheeseText,
        style: AppFonts.font20White.copyWith(
          fontSize: 40.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
