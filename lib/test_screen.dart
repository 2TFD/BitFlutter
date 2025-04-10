import 'package:flutter/material.dart';
import 'package:matule/product_card.dart';
import 'package:matule/root_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  final RootStore _rootStore = RootStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: Text('+widget'),
          onTap: () {
            _rootStore.increment();
            print('${_rootStore.testArray}');
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Observer(
          builder: (_) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
                _rootStore.testArray.map((toElement) {
                  return ProductCard();
                }).toList(),
          ),
        ),
      ),
    );
  }
}
