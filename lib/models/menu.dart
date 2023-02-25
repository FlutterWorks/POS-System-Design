// ignore_for_file: public_member_api_docs, sort_constructors_first
class Menu {
  Menu({
    required this.name,
    required this.weight,
    required this.price,
    required this.image,
  });

  String name;
  int weight;
  double price;
  String image;
}

final kFoodMenuList = <Menu>[
  Menu(
    name: 'Grilled Corn',
    weight: 150,
    price: 1.75,
    image: 'assets/images/menus/grilled_corn.jpg',
  ),
  Menu(
    name: 'Ranch Burgers',
    weight: 150,
    price: 7.75,
    image: 'assets/images/menus/ranch_burgers.jpg',
  ),
  Menu(
    name: 'Becon pizza',
    weight: 150,
    price: 7.00,
    image: 'assets/images/menus/becon_pizza.jpg',
  ),
  Menu(
    name: 'Fettuccine pasta',
    weight: 150,
    price: 7.75,
    image: 'assets/images/menus/fettuccine_pasta.jpg',
  ),
  Menu(
    name: 'Stuffed Flank Steak',
    weight: 150,
    price: 13.50,
    image: 'assets/images/menus/stuffed_flank_steak.jpg',
  ),
  Menu(
    name: 'Tortillas',
    weight: 150,
    price: 7.75,
    image: 'assets/images/menus/tortillas.jpg',
  ),
  Menu(
    name: 'Original Burgers',
    weight: 150,
    price: 7.00,
    image: 'assets/images/menus/original_burgers.jpg',
  ),
  Menu(
    name: 'Pancakes',
    weight: 150,
    price: 1.75,
    image: 'assets/images/menus/pancakes.jpg',
  ),
  Menu(
    name: 'Pepperoni Pizza',
    weight: 150,
    price: 13.50,
    image: 'assets/images/menus/pepperoni_pizza.jpg',
  ),
];
