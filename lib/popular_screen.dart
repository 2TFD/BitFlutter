import 'package:flutter/material.dart';
import 'package:matule/product_card.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Популярное')),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ProductCard()
            ],
          )
        ),
      ),
      
        
    );
  }
}