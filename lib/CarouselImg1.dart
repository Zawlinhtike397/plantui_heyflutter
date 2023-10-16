import 'package:flutter/material.dart';

class carouselImg1 extends StatelessWidget {
  const carouselImg1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
              image: AssetImage('image/Snakeplant.png'),
        );
  }
}


// import 'package:flutter/material.dart';
//
// class LandingScreen1 extends StatelessWidget {
//   const LandingScreen1({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // mainAxisSize: MainAxisSize.min,
//       children: [
//         Image(
//           image: AssetImage('image/Snakeplant.png'),
//           width: 267,
//         ),
//         SizedBox(
//           height: 60.0,
//         ),
//         RichText(
//           //have to use RichText in this one
//           text: const TextSpan(
//             children: [
//               TextSpan(
//                 text: "Enjoy your\nLife with",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w200,
//                 ),
//               ),
//               TextSpan(
//                 text: " Plants",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w700,
//                 ),
//               )
//             ],
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 38.0,
//               letterSpacing: 2.0,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
