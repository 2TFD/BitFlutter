import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.amber
        ),
        height: 182,
        width: 160,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white
              ),
              width: double.maxFinite,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                onPressed:() {
                },
                icon: Icon(CupertinoIcons.heart),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                  iconSize: WidgetStatePropertyAll(14),
                ),
              ),
            ),
            Positioned(
              top: 9,
              left: 9,
              child: Column(
                children: [
                  Container(
                    width: 142,
                    height: 70,
                    child: Image.asset('lib/photo/nike-zoom.png', width: 142, height: 70,), 
                  ), 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text('fa')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(16)),
                  color: Colors.teal,
                ),
                child: IconButton(
                onPressed:() {
                },
                icon: Icon(CupertinoIcons.heart),
              ),
              )
            )
          ],
          
        ),
    );
  }
}
