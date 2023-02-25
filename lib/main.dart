import 'package:flutter/material.dart';
import 'package:pos_system_design/screens/menu/menu_screen.dart';
import 'package:pos_system_design/screens/order/order_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS System Design',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(
            flex: 2,
            child: MenuScreen(),
          ),
          Expanded(
            child: OrderScreen(),
          ),
        ],
      ),
    );
  }
}
