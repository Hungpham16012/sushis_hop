import 'package:flutter/material.dart';
import 'package:sushi_shop/pages/intro_page.dart';
import 'package:sushi_shop/pages/menu_page.dart';




void main() {
  runApp(const MyApp(

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/menupage': (context) =>  MenuPage(),
      },
    );
  }
}



