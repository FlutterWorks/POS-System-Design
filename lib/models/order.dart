import 'package:pos_system_design/models/menu.dart';

class OrderItem {
  OrderItem({
    required this.menu,
    required this.quantity,
  });
  Menu menu;
  int quantity;

  double get price => menu.price * quantity;
}

final kOrderList = <OrderItem>[
  OrderItem(
    menu: kFoodMenuList[0],
    quantity: 1,
  ),
  OrderItem(
    menu: kFoodMenuList[1],
    quantity: 2,
  ),
  OrderItem(
    menu: kFoodMenuList[2],
    quantity: 2,
  ),
  OrderItem(
    menu: kFoodMenuList[3],
    quantity: 2,
  ),
  OrderItem(
    menu: kFoodMenuList[4],
    quantity: 2,
  ),
];
