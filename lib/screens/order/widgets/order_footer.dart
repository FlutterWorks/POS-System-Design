import 'package:flutter/material.dart';
import 'package:pos_system_design/constants.dart';

class OrderFooter extends StatelessWidget {
  const OrderFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kAccentColor,
                          ),
                    ),
                    Text(
                      '\$35.25',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kAccentColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discounts',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kAccentColor,
                          ),
                    ),
                    Text(
                      '-\$5.00',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kAccentColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sales Tax',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kAccentColor,
                          ),
                    ),
                    Text(
                      '\$2.25',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kAccentColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: kAccentColor,
                              ),
                    ),
                    Text(
                      '\$37.50',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: kAccentColor,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CASHLESS CREDIT',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: kAccentColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.3,
                          ),
                    ),
                    Text(
                      '\$32.50',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      'Available',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.grey.shade400,
                            letterSpacing: -0.3,
                          ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Text(
                      'Cancel',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: kAccentColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.3,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        InkWell(
          onTap: () {},
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Center(
              child: Text(
                'Pay With Cashless Credit',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Balance Due',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kAccentColor,
                  ),
            ),
            Text(
              '\$5.00',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: kAccentColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
