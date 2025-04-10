import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Align(
          child: Text(
            'Профиль',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Align(
              child: Column(
                children: [
                  SizedBox(height: 48),
                  Image.asset('lib/photo/profile_image.png'),
                  Text(
                    'Emmanuel Oyiboke',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Изменить фото профиля',
                    style: TextStyle(
                      color: Color.fromRGBO(72, 178, 231, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 11,),
                  Container(
                    height: 66,
                    width: 335,
                    child: Column(
                      children: [
                        // Text('Открыть'),
                        Image.asset('lib/photo/code_profile.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
