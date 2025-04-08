import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  bool personalData = false;
  bool isOpenEye = true;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  changeEye() {
    setState(() {
      widget.isOpenEye = !widget.isOpenEye;
    });
  }

  changPpersonalData() {
    setState(() {
      widget.personalData = !widget.personalData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [],),
      body: Padding(
        padding: EdgeInsets.only(top: 121, left: 20, right: 20, bottom: 47),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 335,
              child: Column(
                children: [
                  Text(
                    'Регистрация',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Заполните Свои данные или \nпродолжите через социальные медиа',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(112, 123, 129, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Ваше имя',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
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
                      labelText: 'xxxxxxxx',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
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
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => changPpersonalData(),
                  child: Icon(
                    widget.personalData
                        ? CupertinoIcons.check_mark_circled_solid
                        : CupertinoIcons.check_mark_circled,
                  ),
                ),
                SizedBox(width: 12),
                Text('Даю согласие на обработку \nперсональных данных'),
              ],
            ),
            SizedBox(height: 24),
            CupertinoButton(
              child: Container(
                width: 335,
                child: Text(
                        'Зарегистрироватеься',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      ),
              onPressed: () {
                context.go('/signin');
              },
              color: Color.fromRGBO(72, 178, 231, 1),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Есть аккаунт? ',
                  style: TextStyle(color: Color.fromRGBO(106, 106, 106, 1)),
                ),
                GestureDetector(
                  child: Text(
                    'Войти',
                    style: TextStyle(
                      color: Color.fromRGBO(106, 106, 106, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () => context.go('/signin'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
