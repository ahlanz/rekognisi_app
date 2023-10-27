import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    PreferredSizeWidget header(){
      return AppBar(
        elevation: 0,
        title: const Text('Home page'),
      );
    }
    return Scaffold(
      appBar: header(),
      body: Center(child: Text('Ini Home page'),)
    );
  }
}