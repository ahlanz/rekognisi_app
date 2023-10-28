import 'package:flutter/material.dart';
import 'package:rekognisi_app/Widget/card_widget.dart';
import 'package:rekognisi_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        title: Text(
          'Filmku',
          style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semibold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.home),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
      );
    }

    Widget rekomendasi() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Now Showing',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semibold,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 3,
                right: 3,
                top: 2,
                bottom: 2,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                'See more',
                style: primaryTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget cardMovie() {
      return Container(
        child: Column(
          children: [
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
            CardMovie(),
          ],
        ),
      );
    }

    Widget button() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/keranjang');
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(18)),
          child: Center(
            child: Text(
              'Lanjutkan',
              style: primaryTextStyle.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [
            rekomendasi(),
            cardMovie(),
            button(),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
