import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:matule/share/root_store.dart';

class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RootStore _rootstore = RootStore();
    return Scaffold(
      body: Observer(
        builder: (_)=> Column(
          children: [
            Text(_rootstore.profileDetails.name),
            Text(_rootstore.profileDetails.lastname),
            Text(_rootstore.profileDetails.address),
            Text(_rootstore.profileDetails.number),
          ],
        ),
      ),
    );
  }
}
