import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/product_card.dart';

class PopularScreen extends StatelessWidget {
  PopularScreen({super.key});

  List<int> array = [0, 1, 2, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Популярное'),
                Spacer(),
                Icon(CupertinoIcons.heart),
              ],
            ),
          ],
        ),
      ),
      body: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),

          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            childAspectRatio: 160 / 182,
            crossAxisSpacing: 20,
            children: array.map((e) {
              return ProductCard();
            }).toList(),
          ),
        ),
      ),
    );
  }
}
