import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ['Strawberry', '\$35.8', Colors.blue, 'assets/images/donut1.png'],
    ['Choco', '\$38.9', Colors.brown, 'assets/images/donut2.png'],
    ['Ice Cream', '\$39.5', Colors.red, 'assets/images/donut3.png'],
    ['Grape Ape', '\$45.3', Colors.purple, 'assets/images/donut4.png'],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      itemCount: donutsOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          Flavour: donutsOnSale[index][0],
          Price: donutsOnSale[index][1],
          DonutColor: donutsOnSale[index][2],
          ImageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
