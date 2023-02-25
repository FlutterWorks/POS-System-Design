import 'package:flutter/material.dart';
import 'package:pos_system_design/constants.dart';
import 'package:pos_system_design/models/menu.dart';

class FoodMenus extends StatelessWidget {
  const FoodMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        if (constraints.maxWidth <= 400) {
          crossAxisCount = 1;
        } else if (constraints.maxWidth <= 600) {
          crossAxisCount = 2;
        } else {
          crossAxisCount = 3;
        }

        return GridView.builder(
          itemCount: kFoodMenuList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 2 / 1.2,
          ),
          itemBuilder: (context, index) {
            final menu = kFoodMenuList[index];
            return FoodMenuCard(menu: menu);
          },
        );
      },
    );
  }
}

class FoodMenuCard extends StatelessWidget {
  const FoodMenuCard({
    super.key,
    required this.menu,
  });
  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey.shade200,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                menu.name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: kAccentColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                '${menu.weight}g',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.grey,
                    ),
              ),
              Expanded(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$${menu.price.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          menu.image,
                          height: constraints.maxHeight,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
