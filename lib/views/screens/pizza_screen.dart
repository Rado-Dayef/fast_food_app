import 'package:fast_food_app/constants/app_imports.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.pizzaText,
        style: AppFonts.font20White.copyWith(
          fontSize: 40.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
