import 'package:flutter/material.dart';
import 'package:rekognisi_app/theme.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/splash.jpeg',
            width: 200,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kiminonawa',
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: semibold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('kahsjhdjkasdh')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
