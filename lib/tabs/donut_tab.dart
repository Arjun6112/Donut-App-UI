import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", "35", Colors.blue, "lib/images/icecream_donut.png"],
    ["Chocolate", "35", Colors.red, "lib/images/chocolate_donut.png"],
    ["Grape", "35", Colors.purple, "lib/images/grape_donut.png"],
    ["Strawberry", "35", Colors.pink, "lib/images/strawberry_donut.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: donutsOnSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3],
          );
        });
  }
}
