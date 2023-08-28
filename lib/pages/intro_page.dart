import 'package:flutter/material.dart';
import 'package:sushi_shop/Components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Text(
              'SUSHI MAN',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                // Tên font chữ đã đặt trong pubspec.yaml
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20), // Removed the semicolon at the end
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/salmon_sushi.png'),
            ), // Updated the image path
            const SizedBox(height: 20),
            const Text(
              'THE TASTE OF JAPANESES FOOD',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                // Tên font chữ đã đặt trong pubspec.yaml
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Feel the taste of most populars '
              'Japanese foods from anywhere and anytime',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                // Tên font chữ đã đặt trong pubspec.yaml
                //fontSize: 20,
                height: 2,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              text: "Get started",
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
