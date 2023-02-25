import 'package:flutter/material.dart';
import 'package:pos_system_design/constants.dart';

class MenuTabs extends StatelessWidget {
  const MenuTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5,
      child: TabBar(
        indicator: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        labelPadding: EdgeInsets.all(16.0),
        unselectedLabelColor: kAccentColor,
        tabs: [
          Text('All Items'),
          Text('Food'),
          Text('Alcohol'),
          Text('Cold Drinks'),
          Text('Hot Drinks'),
        ],
      ),
    );
  }
}
