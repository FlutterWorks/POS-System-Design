import 'package:flutter/material.dart';
import 'package:pos_system_design/screens/menu/widgets/food_menus.dart';
import 'package:pos_system_design/screens/menu/widgets/header.dart';
import 'package:pos_system_design/screens/menu/widgets/menu_footer.dart';
import 'package:pos_system_design/screens/menu/widgets/menu_tabs.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          Header(),
          SizedBox(height: 24.0),
          MenuTabs(),
          SizedBox(height: 24.0),
          Expanded(
            child: FoodMenus(),
          ),
          SizedBox(height: 16.0),
          MenuFooter(),
        ],
      ),
    );
  }
}
