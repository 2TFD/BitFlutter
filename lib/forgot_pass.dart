import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 130, left: 20, right: 20),
        child: Container(
          // height: 272,
          width: 335,
          child: Column(
            children: [
              Text(
                'Забыл пароль',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8),
              Text(
                'Введите свою учетную запись \nдля сброса',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'xyz@gmail.com',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              SizedBox(height: 57),
              CupertinoButton(
                child: Container(
                  width: 335,
                  child: Text(
                    'Отправить',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  AlertDialog(
                    title: Text("Success"),
                    content: Text("Save successfully"),
                  );
                },
                color: Color.fromRGBO(72, 178, 231, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
