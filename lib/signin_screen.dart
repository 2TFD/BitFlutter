import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/product_card.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({super.key});
  bool isOpenEye = true;

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  void changeEye() {
    setState(() {
      widget.isOpenEye = !widget.isOpenEye;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 44,
          bottom: 47,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 78),
                Text(
                  'Привет!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Color.fromRGBO(43, 43, 43, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Заполните Свои данные или\nпродолжите через социальные медиа',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromRGBO(112, 123, 129, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(247, 247, 249, 1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'xyz@gmail.com',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  'Пароль',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(247, 247, 249, 1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    obscureText: widget.isOpenEye,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '********',
                      suffixIcon: GestureDetector(
                        onTap: () => changeEye(),
                        child: Icon(
                          widget.isOpenEye
                              ? CupertinoIcons.eye_slash
                              : CupertinoIcons.eye,
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),

                Row(
                  children: [
                    GestureDetector(
                      child: Text(
                        'Востановить',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(112, 123, 129, 1),
                        ),
                      ),
                      onTap: () => context.push('/forgot'),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                ),

                SizedBox(height: 20),

                CupertinoButton(
                  child: Text(
                    'Войти',
                    style: TextStyle(color: Color.fromRGBO(247, 247, 249, 1)),
                  ),
                  onPressed: () => context.go('/'),
                  color: Color.fromRGBO(72, 178, 231, 1),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Вы впервые?',
                      style: TextStyle(color: Colors.black12),
                    ),
                    GestureDetector(
                      child: Text('Создать пользователя'),
                      onTap: () => context.push('/reg'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
