import 'package:flutter/material.dart';
import 'package:pos_system_design/constants.dart';

class MenuFooter extends StatelessWidget {
  const MenuFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'WRISTBAND INFORMATION',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: kAccentColor,
                        fontSize: 8.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.3,
                      ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/person/person.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      children: [
                        Text(
                          'Eleanor Russell',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: kAccentColor,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.3),
                        ),
                        Container(
                          margin: const EdgeInsets.all(4.0),
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.pink,
                              ],
                            ),
                          ),
                          child: Text(
                            'VIP TICKET HOLDER',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.3),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 32.0),
                    InkWell(
                      onTap: () {},
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade300,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'unlink',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const SizedBox(
              height: 50.0,
              child: VerticalDivider(),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'SELECT AVAILABLE PROMO TO APPLY',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: kAccentColor,
                            fontSize: 8.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.3,
                          ),
                    ),
                    const SizedBox(width: 16.0),
                    Text(
                      '(LIMIT 1 PER ORDER)',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Colors.grey,
                            fontSize: 8.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.3,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                SizedBox(
                  height: 50.0,
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.pink,
                              ],
                            )),
                        child: Container(
                          height: 46.0,
                          margin: const EdgeInsets.all(1.0),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '\$5 Off Any Item',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: kAccentColor,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.5,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        height: 50.0,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Free Beverage',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: kAccentColor,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -0.5,
                                    ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        height: 50.0,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '20% Off Entire Order',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: kAccentColor,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -0.5,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
