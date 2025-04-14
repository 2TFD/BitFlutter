import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(247, 247, 249, 1)
      ),
      width: 335,
      height: 128,
      child: Padding(
        padding: EdgeInsets.only(right: 16, left: 16, top: 16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('Заголовок')
              ),
              SizedBox(height: 8,),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '27.01.2024, 15:42',
                  style: TextStyle(
                    fontSize: 12,

                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}