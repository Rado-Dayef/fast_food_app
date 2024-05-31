class BurgerModel {
  final String image;
  final String title;
  final double price;
  final String subTitle;
  final String description;

  BurgerModel(
    this.image, {
    required this.title,
    required this.price,
    required this.subTitle,
    required this.description,
  });
}
