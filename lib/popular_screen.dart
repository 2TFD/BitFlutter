import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/product_card.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

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
                Row(children: [Icon(CupertinoIcons.heart)]),
              ],
            ),
          ],
        ),
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          // child: SingleChildScrollView(
          //   child: Column(
          //     children:
                  // [0, 1, 2, 4, 5].map((_) {
                  //   return Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [ProductCard(), ProductCard()],
                  //   );
                  // }).toList(),
          //   ),
          // ),

          child: SingleChildScrollView(
            child: GridView.count(
              crossAxisCount: 2,
              children: [0, 1, 2, 4, 5].map((_) {
                    return ProductCard();
                  }).toList(),
              ),
          ),

          // child: Scrollbar(
          //   child: ListView(
          //     children: [
          //       Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         ProductCard(),
          //         ProductCard(),
          //       ],
          //     ),
          //     SizedBox(height: 20,),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         ProductCard(),
          //         ProductCard(),
          //       ],
          //     ),
          //     SizedBox(height: 20,),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         ProductCard(),
          //         ProductCard(),
          //       ],
          //     ),
          //     SizedBox(height: 20,),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         ProductCard(),
          //         ProductCard(),
          //       ],
          //     ),
          //     SizedBox(height: 20,),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         ProductCard(),
          //         ProductCard(),
          //       ],
          //     ),
          //     SizedBox(height: 20,),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         ProductCard(),
          //         ProductCard(),
          //       ],
          //     ),
          //     SizedBox(height: 20,),
          //     ],
          //   ),
          // )
        ),
      ),
    );
  }
}
