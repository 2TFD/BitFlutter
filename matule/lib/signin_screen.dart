import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: TextField(
                    obscureText: true,
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
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: '********',
                      icon: Icon(Icons.remove_red_eye_sharp),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                ),

                Row(
                  children: [
                    Text(
                      'Востановить', 
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(112, 123, 129, 1),
                      ),
                    )
                  ],
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                ),
                

                SizedBox(height: 20,),

                CupertinoButton.tinted(child: Text('Войти', style: TextStyle(
                  color: Color.fromRGBO(247, 247, 249, 1)
                )),
                 onPressed: null,
                 disabledColor: Color.fromRGBO(72, 178, 231, 1),
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
                          style: TextStyle(
                            color: Colors.black12,
                          )
                        ),
                        Text(
                          'Создать пользователя',
                          style: TextStyle(
                          )
                        )
                      ],
                    ),
                  ],
                )
          ],
        ),
      ),
    );
  }
}
