import 'package:flutter/material.dart';

class Slogan1 extends StatelessWidget {
  const Slogan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        //have to use RichText in this one
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Enjoy your\nLife with",
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            TextSpan(
              text: " Plants",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            )
          ],
          style: TextStyle(
            color: Colors.black,
            fontSize: 38.0,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}
