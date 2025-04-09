import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:input_code_field/input_code_field.dart';

class VerifScreen extends StatelessWidget {
  const VerifScreen({super.key});

  @override
  Widget build(BuildContext context) {

   final InputCodeControl codeControl = InputCodeControl();
 
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 312,
          width: 335,
          child: Column(
            children: [
              Text(
                'OTP проверка',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              Text(
                'Пожалуйста, проверьте свою \nэлектронную почту, чтобы увидеть код \nподтверждения',
                style: TextStyle(
                  color: Color.fromRGBO(112, 123, 129, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'OTP Код',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                ),
              ),
              Spacer(),



              Container(
                height: 99,
                width: 336,
                child:  InputCodeField(
                control: codeControl,
                decoration: InputCodeDecoration(
                  textStyle: Theme.of(context).textTheme.headlineSmall,
                  box: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(247, 247, 249, 1),
                    
                  )
                ),
                autofocus: true,
              ),
              ),




              Spacer(),
              Container(
                height: 14,
                width: 335,
                child: Row(
                  children: [
                    Text(
                      'Отправить заново',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(112, 123, 129, 1),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '00:30',
                      style: TextStyle(
                        color: Color.fromRGBO(112, 123, 129, 1),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
