import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  TestScreen({super.key});

  bool isFlag = true;

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
   _onTap() {
    widget.isFlag = !widget.isFlag;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        _onTap();
      }),
      child: Container(color: widget.isFlag ? Colors.amber : Colors.black,)
    );
}
}