import 'package:flutter/material.dart';
import 'package:rekognisi_app/page/home/home_page.dart';
import 'package:rekognisi_app/page/home/keranjang_page.dart';
import 'package:rekognisi_app/page/home/merchant_page.dart';
import 'package:rekognisi_app/page/home/riwayat_page.dart';
import 'package:rekognisi_app/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor: primaryColor,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Icon(Icons.home)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Icon(Icons.shopping_cart)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Icon(Icons.shop_2)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Icon(Icons.history)),
              label: '',
            )
          ],
          selectedItemColor: Colors.white, // Set selected icon color to white
          unselectedItemColor: Colors.blueGrey,
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const KeranjangPage();
        case 2:
          return const MerchantPage();
        case 3:
          return const RiwayatPage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
