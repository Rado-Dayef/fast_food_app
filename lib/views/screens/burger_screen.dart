import 'package:fast_food_app/constants/app_imports.dart';

class BurgerScreen extends StatelessWidget {
  final HomeController controller;

  const BurgerScreen(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: controller.loadBurgerData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return AppShimmers.homeBurgerShimmer();
        } else if (snapshot.hasError) {
          return Center(
            child: Icon(
              Icons.error_outline,
              color: AppColors.whiteColor,
              size: 75.sp,
            ),
          );
        } else {
          return GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            itemCount: controller.burgerList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.sp,
              mainAxisSpacing: 5.sp,
              mainAxisExtent: 275.sp,
            ),
            itemBuilder: (BuildContext context, int index) {
              BurgerModel burger = controller.burgerList[index];
              return InkWell(
                onTap: () => controller.onBurgerItemClick(burger),
                child: HomeBurgerWidget(burger),
              );
            },
          );
        }
      },
    );
  }
}
