import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/product_card.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    for (var i = 0; i <= 20; i++) {
      widgets.add(ProductCard());
    }
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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),

          child: SingleChildScrollView(
            child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: widgets,
                  ),
                  Column(
                    children: widgets,
                  )
                ]
              )
            ],
            ),
          ),



          // child: SingleChildScrollView(child: Column(children: widgets)),

          // child: SingleChildScrollView(
          //   child: GridView.count(
          //     crossAxisSpacing: 20,
          //     mainAxisSpacing: 20,
          //     crossAxisCount: 2,
          //     children: [0, 1, 2, 4, 5].map((_) {
          //           return ProductCard();
          //         }).toList(),
          //     ),
          // ),
        ),
      ),
    );
  }
}
