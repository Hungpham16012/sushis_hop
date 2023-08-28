import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  

  const MyButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 169, 106, 106),

        ),

        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                style: const TextStyle(
                  fontFamily: 'SpaceGrotesk',  // Tên font chữ đã đặt trong pubspec.yaml
                  fontSize: 15,
                  color: Colors.white,
                )
            ),
            const SizedBox(width: 15),
            const Icon(Icons.arrow_forward,
            color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
