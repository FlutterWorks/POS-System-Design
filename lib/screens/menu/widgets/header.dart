import 'package:flutter/material.dart';
import 'package:pos_system_design/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Simons's BBQ Team",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: kAccentColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Location ID# SIMON123',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: kAccentColor,
                  ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'LastSynced',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  '3 mins ago',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: kAccentColor,
                      ),
                ),
              ],
            ),
          ],
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.help_outline_rounded,
            color: kAccentColor,
          ),
          label: const Text(
            'Help',
            style: TextStyle(
              color: kAccentColor,
            ),
          ),
        ),
      ],
    );
  }
}
