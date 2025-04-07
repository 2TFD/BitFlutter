import 'package:flutter/material.dart';
import 'package:matule/product_card.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Популярное'))),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Scrollbar(
            child: ListView(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductCard(),
                  ProductCard(),
                ],
              ),
              SizedBox(height: 20,),
              ],
            ),
          )
        ),
      ),
    );
  }
}