import 'package:fast_food_app/constants/app_imports.dart';

class PastaScreen extends StatelessWidget {
  const PastaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.pastaText,
        style: AppFonts.font20White.copyWith(
          fontSize: 40.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
