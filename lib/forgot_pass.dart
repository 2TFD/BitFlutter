import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/test_screen.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 130, left: 20, right: 20),
        child: Container(
          width: 335,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Icon(CupertinoIcons.mail_solid),
                          content: GestureDetector(
                            onTap: () => context.push('/signin/reg/forgot/verif'),
                            child: Container(
                              height: 68,
                              width: 335,
                              child: Column(
                                children: [
                                  Text(
                                    'Проверьте Ваш Email',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'Мы отправили код восстановления пароля на вашу электронную почту.',
                                    style: TextStyle(
                                      color: Color.fromRGBO(112, 123, 129, 1),
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          )
                        ),
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
