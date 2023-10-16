import 'package:flutter/material.dart';

class Slogan2 extends StatelessWidget {
  const Slogan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        //have to use RichText in this one
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Take a look at \n",
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            TextSpan(
              text: "our amazing Plants",
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
