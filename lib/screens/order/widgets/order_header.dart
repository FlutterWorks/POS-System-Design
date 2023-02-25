import 'package:flutter/material.dart';
import 'package:pos_system_design/constants.dart';

class OrderHeader extends StatelessWidget {
  const OrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Current Order",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: kAccentColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        const Spacer(),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            backgroundColor: Colors.pink.shade100,
          ),
          child: Text(
            'Clear All',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.pink.shade400,
                ),
          ),
        ),
        const SizedBox(width: 16.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ],
    );
  }
}
