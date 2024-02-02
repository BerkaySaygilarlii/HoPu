

class Product {
  final String title;
  final String image;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Big sandwich bamburger",
    image: "assets/images/hopulogo.svg"
  ),
  Product(
    id: 2,
    title: "Chicken pizza with pepper",
    image: "assets/images/hopulogo.svg"
  ),
  Product(
    id: 3,
    title: "Crispy fish nuggets",
    image: "assets/images/hopulogo.svg"
  ),
  Product(
    id: 4,
    title: "Chicken prawn cheese fish",
    image: "assets/images/hopulogo.svg"
  ),
  Product(
    id: 5,
    title: "French fries",
    image: "assets/images/hopulogo.svg"
  ),
  Product(
    id: 6,
    title: "Specky burger",
    image: "assets/images/hopulogo.svg"
  ),
];
