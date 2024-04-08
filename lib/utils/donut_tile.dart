import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String Flavour;
  final String Price;
  final DonutColor;
  final String ImageName;
  const DonutTile({
    super.key,
    required this.Flavour,
    required this.Price,
    required this.DonutColor,
    required this.ImageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: DonutColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    color: DonutColor[100],
                  ),
                  child: Text(
                    Price,
                    style: TextStyle(
                      color: DonutColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
              child: Image.asset(ImageName),
            ),
            Text(
              Flavour,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Dunkins',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink[600],
                ),
                Icon(
                  Icons.add,
                  color: Colors.grey[800],
                  size: 25,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
