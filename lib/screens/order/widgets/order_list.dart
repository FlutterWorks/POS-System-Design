import 'package:flutter/material.dart';
import 'package:pos_system_design/constants.dart';
import 'package:pos_system_design/models/order.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      children: kOrderList
          .map(
            (orderItem) => OrderItemView(orderItem: orderItem),
          )
          .toList(),
    );
  }
}

class OrderItemView extends StatelessWidget {
  const OrderItemView({
    super.key,
    required this.orderItem,
  });
  final OrderItem orderItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(orderItem.menu.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Flexible(
                  child: Text(
                    orderItem.menu.name,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                orderItem.quantity == 1
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.pink.shade200,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline,
                            color: Colors.white,
                          ),
                          constraints: const BoxConstraints(),
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove),
                          constraints: const BoxConstraints(),
                        ),
                      ),
                const SizedBox(width: 8.0),
                Text(
                  '${orderItem.quantity}',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kAccentColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    constraints: const BoxConstraints(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              '\$${orderItem.price.toStringAsFixed(2)}',
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kAccentColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
