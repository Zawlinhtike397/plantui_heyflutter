import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        useMaterial3: true,
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
      ),
      home: const LandingPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required String title});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:    [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){

                },
                  child: Text('Skip',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15
                    ),
                  ),

                  ),
                )
              ],
            ),
           const Image(
             width: 600,
                image: AssetImage('image/Plant1.png'),
            ),
            Text(
                'Enjoy your Life with Plants',
              style: GoogleFonts.poppins(

              ),
            )

          ],
        ),
      ),
    );
  }
}


