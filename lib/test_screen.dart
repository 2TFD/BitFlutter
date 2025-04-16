import 'package:flutter/material.dart';
import 'package:matule/entity/item_entity.dart';
import 'package:matule/entity/product_entity.dart';
import 'package:matule/entity/user_entity.dart';
import 'package:matule/share/root_store.dart';

final RootStore _rootStore = RootStore();

  final user = UserEntity(
    name: 'name',
    lastname: 'lastname',
    address: 'address',
    number: 'number',
    item: item,
    items: [item, item, item],
    basket: [
      _rootStore.productDetails.product11,
      _rootStore.productDetails.product22,
      _rootStore.productDetails.product33,
    ],
  );


class TestScreen extends StatefulWidget {
  TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  


  List<ItemEntity> itemsArray = user.items!;

  List<ProductEntity> basketArray = [];

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i < user.items!.length; i++) {
      itemsArray.add(user.items![i]);
    }
    for (int i = 0; i < user.basket!.length; i++) {
      basketArray.add(user.basket![i]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text('inventory'),
                    SingleChildScrollView(
                      child: Column(
                       children: itemsArray.map((e) {
                            return Container(
                              margin: EdgeInsets.all(2),
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Text(
                                    e.name,
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),Text(
                                    e.colorItem,
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  )
                                ],
                              )
                              );
                          }).toList(),
                      )
                    ),
                  ],
                ),
                Spacer(),
                Column(children: [
                  Text('product'),
                  SingleChildScrollView(
                    child: Column (
                     children: basketArray.map((e){
                      return Container(
                        margin: EdgeInsets.all(1),
                        color: Colors.grey,
                        child: Column(
                          children: [
                            Text(e.title),
                            Text(e.description),
                            Text(e.price.toString(), style: TextStyle(
                              color: Colors.red
                            ),)
                          ],
                        ) 
                      );
                    }).toList(),
                  )
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
