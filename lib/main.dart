import 'package:flutter/material.dart';
import 'package:rekognisi_app/page/home/keranjang_page.dart';
import 'package:rekognisi_app/page/home/main_page.dart';
import 'package:rekognisi_app/page/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const MainPage(),
        '/keranjang': (context) => const KeranjangPage(),
      },
    );
  }
}
