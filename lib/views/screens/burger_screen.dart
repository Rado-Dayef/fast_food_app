import 'package:fast_food_app/constants/app_imports.dart';

class BurgerScreen extends StatelessWidget {
  final HomeController controller;

  const BurgerScreen(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      itemCount: controller.burgerList[AppStrings.dataJSONText]!.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.sp,
        mainAxisSpacing: 5.sp,
        mainAxisExtent: 275.sp,
      ),
      itemBuilder: (BuildContext context, int index) {
        BurgerModel burger = controller.burgerList[AppStrings.dataJSONText]![index];
        return InkWell(
          onTap: () => controller.onBurgerItemClick(burger),
          child: HomeBurgerWidget(burger),
        );
      },
    );
  }
}
