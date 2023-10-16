import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantui_heyflutter/landing_slogan_1.dart';
import 'package:plantui_heyflutter/landing_slogan_2.dart';
import 'package:plantui_heyflutter/landingscreen_1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'homepage.dart';
import 'landingscreen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // useMaterial3: true,
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: LandingPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LandingPage extends StatefulWidget {
  LandingPage({super.key, required String title});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

// class _LandingPageState extends State<LandingPage> {
//   final _controller = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 0.0),
//           child: ListView(
//             children: [
//               Column(
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 1,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const HomePage()));
//                         },
//                         child: Text(
//                           'Skip',
//                           style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.grey[700],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 300,
//                     child: PageView(
//                       controller: _controller,
//                       children: const [
//                         LandingScreen1(),
//                         LandingScreen2(),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 15.0,
//                     ),
//                     child: SmoothPageIndicator(
//                       controller: _controller,
//                       count: 2,
//                       effect: ExpandingDotsEffect(
//                         dotHeight: 6.0,
//                         dotWidth: 6.0,
//                         spacing: 4.0,
//                         activeDotColor: Colors.grey.shade700,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 25.0,
//                   ),
//                   Center(
//                     child: RichText(
//                       //have to use RichText in this one
//                       text: const TextSpan(
//                         children: [
//                           TextSpan(
//                             text: "Enjoy your\nLife with",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w200,
//                             ),
//                           ),
//                           TextSpan(
//                             text: " Plants",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                             ),
//                           )
//                         ],
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 38.0,
//                           letterSpacing: 2.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                     const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
//                     child: SizedBox(
//                       height: 80,
//                       width: 80,
//                       child: FloatingActionButton(
//                         onPressed: () {
//
//                         },
//                         backgroundColor: Colors.lightGreen[600],
//                         child: const Icon(
//                           Icons.arrow_forward,
//                           size: 40.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class _LandingPageState extends State<LandingPage> {
  final _controller = PageController();
  int currentPage = 0; // Variable to track the current page index

  @override
  void initState() {
    super.initState();
    // Add a listener to the PageController to update the currentPage
    _controller.addListener(() { //what does that do?
        setState(() {
          currentPage = _controller.page?.round() ?? 0;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 0.0),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()
                              ),
                          );
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[700],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 300,
                    child: PageView(
                      controller: _controller,
                      children: const [
                        LandingScreen1(),
                        LandingScreen2(),
                        LandingScreen1(),
                        LandingScreen2(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: ExpandingDotsEffect(
                        dotHeight: 6.0,
                        dotWidth: 6.0,
                        spacing: 4.0,
                        activeDotColor: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Center(
                    child: RichText(
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
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Navigate to the next page
                          if (currentPage < 3) {
                            print(currentPage);
                            _controller.animateToPage(currentPage + 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease);
                          } else if(currentPage >= 3) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()
                              ),
                            );
                          }
                        },
                        backgroundColor: Colors.lightGreen[600],
                        child: currentPage < 3 ? const Icon(
                          Icons.arrow_forward,
                          size: 40.0,
                        )
                        : const Icon(
                      Icons.check,
                      size: 40.0,
                      )
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
