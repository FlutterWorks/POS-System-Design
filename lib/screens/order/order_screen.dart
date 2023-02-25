import 'package:flutter/material.dart';
import 'package:pos_system_design/screens/order/widgets/order_footer.dart';
import 'package:pos_system_design/screens/order/widgets/order_header.dart';
import 'package:pos_system_design/screens/order/widgets/order_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          OrderHeader(),
          SizedBox(height: 16.0),
          Expanded(
            child: OrderList(),
          ),
          SizedBox(height: 16.0),
          OrderFooter(),
        ],
      ),
    );
  }
}
